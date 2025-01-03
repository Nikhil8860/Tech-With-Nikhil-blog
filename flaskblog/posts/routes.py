from flask import render_template, url_for, flash, redirect, request, abort, Blueprint
from flask_login import current_user, login_required
from flaskblog import db
from flaskblog.models import Post, User, Course
from flaskblog.posts.forms import PostForm
from flaskblog.config import Config

posts = Blueprint("posts", __name__)


@posts.route("/post/new", methods=["GET", "POST"])
@login_required
def new_post():
    form = PostForm()
    course = Course.query.all()
    if current_user.email == Config.ADMIN_MAIL:
        if form.validate_on_submit():
            course_id = Course.query.filter_by(course_name=form.course.data).first()
            post = Post(
                title=form.title.data,
                content=form.content.data,
                author=current_user,
                course_id=course_id.id,
            )
            db.session.add(post)
            db.session.commit()
            flash("Your post has been created!", "success")
            # return redirect(url_for('main.home'))
            return redirect(url_for("posts.new_post"))
        return render_template(
            "create_post.html",
            title="New Post",
            form=form,
            legend="New Post",
            course_list=course,
        )
    else:
        flash("Only Admin can add post", "warning")
        return redirect(url_for("main.course"))


@posts.route("/post/<int:post_id>")
def post(post_id):
    post = Post.query.get_or_404(post_id)
    return render_template("post.html", title=post.title, post=post)


@posts.route("/post/<int:post_id>/update", methods=["GET", "POST"])
@login_required
def update_post(post_id):
    post = Post.query.get_or_404(post_id)
    course_name = Course.query.filter_by(id=post.course_id).first()
    form = PostForm()
    if form.validate_on_submit():
        post.title = form.title.data
        post.content = form.content.data
        db.session.commit()
        flash("Your post has been updated!", "success")
        return redirect(url_for("posts.post", post_id=post.id))
    elif request.method == "GET":
        form.title.data = post.title
        form.content.data = post.content
        form.course.data = course_name.course_name
    return render_template(
        "create_post.html", title="Update Post", form=form, legend="Update Post"
    )


@posts.route("/post/<int:post_id>/delete", methods=["POST"])
@login_required
def delete_post(post_id):
    post = Post.query.get_or_404(post_id)
    if post.author != current_user:
        abort(403)
    db.session.delete(post)
    db.session.commit()
    flash("Your post has been deleted!", "success")
    return redirect(url_for("main.home"))


@posts.route("/send/<int:user_id>/send-response", methods=["GET", "POST"])
@login_required
def send_response(user_id):
    # post = Post.query.get_or_404(post_id)
    # db.session.delete(post)
    # db.session.commit()
    print(user_id)
    flash("Response has been sent successfully!", "success")
    return redirect(url_for("main.home"))
