from flask import render_template, url_for, flash, redirect, request, Blueprint, session
from flask_login import login_user, current_user, logout_user, login_required
from flaskblog import db, bcrypt
from flaskblog.models import User, Post, Contact
from flaskblog.users.forms import (RegistrationForm, LoginForm, UpdateAccountForm,
                                   RequestResetForm, ResetPasswordForm, ContactForm)
from flaskblog.users.utils import save_picture, send_reset_email, sendmail_attach_mktcloud
from sqlalchemy import desc
from flaskblog.config import Config
users = Blueprint('users', __name__)


@users.route("/register", methods=['GET', 'POST'])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    form = RegistrationForm()
    if form.validate_on_submit():
        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user = User(username=form.username.data, email=form.email.data, password=hashed_password)
        db.session.add(user)
        db.session.commit()
        flash('Your account has been created! You are now able to log in', 'success')
        return redirect(url_for('users.login'))
    return render_template('register.html', title='Register', form=form)


@users.route("/login", methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        if user and bcrypt.check_password_hash(user.password, form.password.data):
            login_user(user, remember=form.remember.data)
            next_page = request.args.get('next')
            session.permanent = True
            return redirect(next_page) if next_page else redirect(url_for('main.home'))
        else:
            flash('Login Unsuccessful. Please check email and password', 'danger')
    return render_template('login.html', title='Login', form=form)


@users.route("/logout")
def logout():
    logout_user()
    # return redirect(url_for('main.home'))
    return redirect(url_for('main.course'))


@users.route("/account", methods=['GET', 'POST'])
@login_required
def account():
    form = UpdateAccountForm()
    if form.validate_on_submit():
        if form.picture.data:
            picture_file = save_picture(form.picture.data)
            current_user.image_file = picture_file
        current_user.username = form.username.data
        current_user.email = form.email.data
        db.session.commit()
        flash('Your account has been updated!', 'success')
        return redirect(url_for('users.account'))
    elif request.method == 'GET':
        form.username.data = current_user.username
        form.email.data = current_user.email
    image_file = url_for('static', filename='profile_pics/' + current_user.image_file)
    return render_template('account.html', title='Account',
                           image_file=image_file, form=form)


@users.route("/user/<string:username>")
def user_posts(username):
    page = request.args.get('page', 1, type=int)
    print(page)
    user = User.query.filter_by(username=username).first_or_404()
    posts = Post.query.filter_by(author=user) \
        .order_by(Post.date_posted.desc()) \
        .paginate(page=page, per_page=5)
    return render_template('user_posts.html', posts=posts, user=user)


@users.route("/reset-password", methods=['GET', 'POST'])
def reset_request():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    form = RequestResetForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        send_reset_email(user)
        flash('An email has been sent with instructions to reset your password.', 'info')
        return redirect(url_for('users.login'))
    return render_template('reset_request.html', title='Reset Password', form=form)


@users.route("/reset-password/<token>", methods=['GET', 'POST'])
def reset_token(token):
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    user = User.verify_reset_token(token)
    if user is None:
        flash('That is an invalid or expired token', 'warning')
        return redirect(url_for('users.reset_request'))
    form = ResetPasswordForm()
    if form.validate_on_submit():
        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user.password = hashed_password
        db.session.commit()
        flash('Your password has been updated! You are now able to log in', 'success')
        return redirect(url_for('users.login'))
    return render_template('reset_token.html', title='Reset Password', form=form)


@users.route("/contact", methods=['GET', 'POST'])
# @login_required
def contact_us():
    form = ContactForm()
    if form.validate_on_submit():
        user = Contact.query.filter_by(email=form.email.data).first()
        # if user:
        #     flash('Email already Exists!', 'warning')
        #     return render_template('contact.html', title='Contact Us',
        #                            form=form, legend='Contact Form')
        contact = Contact(username=form.username.data, email=form.email.data, phone=form.phone.data,
                          content=form.content.data)
        print(contact.email)
        db.session.add(contact)
        db.session.commit()
        flash('we will connect with you soon!', 'success')
        return redirect(url_for('main.home'))
    return render_template('contact.html', title='Contact Us',
                           form=form, legend='Contact Form')


@users.route("/show-users-requests", methods=['GET', 'POST'])
@login_required
def show_all_users():
    if request.method == 'POST':
        email = request.form.get('recipient')
        content = request.form.get('msg')
        user_query = request.form.get('user-query')
        # data = Contact.query.filter_by(email=email).first()
        data = Contact.query.order_by(desc(Contact.id)).first()
        sendmail_attach_mktcloud(email, content, user_query)
        if data:
            data.is_seen = 1
            db.session.add(data)
            db.session.commit()
        flash("Mail send successfully!", "info")
    if current_user.email == Config.ADMIN_MAIL:
        page = request.args.get('page', 1, type=int)
        contact = Contact.query.order_by(Contact.contact_posted.desc()).paginate(page=page, per_page=5)
        new_users = len(Contact.query.filter_by(is_seen=0).all())
        return render_template('show-users.html', contacts=contact, title='show users', new_user=new_users)
    else:
        flash("Only Admin can see user request!", "warning")
        return redirect(url_for('main.course'))


@users.route("/show-users-requests-new")
@login_required
def show_all_users_new():
    new_users = Contact.query.all()
    print("HELO")
    flash("Mail send successfully!", "info")
    return render_template('show-users.html')
