from flask import render_template, request, Blueprint, redirect, url_for, flash
from flaskblog.models import AddBatch
from flaskblog.models import Enquiry
from flaskblog import db
from datetime import datetime

course = Blueprint('course', __name__)


@course.route("/python")
def python():
    return render_template('course/python.html', title='Python')


@course.route("/django")
def django():
    return render_template('course/django.html', title='Django')


@course.route("/flask")
def flask():
    return render_template('course/flask.html', title='Flask')


@course.route("/dsa")
def dsa():
    return render_template('course/dsa.html', title='Data Structure and Algorithm')


@course.route("/data-science")
def data_science():
    return render_template('course/data-science.html', title='Data Science')


@course.route("/machine-learning")
def machine_learning():
    return render_template('course/machine-learning.html', title='Machine Learning')


@course.route('/enquiry', methods=['GET', 'POST'])
def enquiry():
    if request.method == 'POST':
        name = request.form.get('name')
        phone = request.form.get('phone')
        message = request.form.get('msg')
        enquiry_date = datetime.utcnow()
        post = Enquiry(name=name, phone=phone, message=message, enquiry_date=enquiry_date)
        db.session.add(post)
        db.session.commit()
        flash('We will get in touch with you soon!', 'success')
        return redirect(url_for('main.course'))
    return redirect('/')


@course.route('/upcoming-course')
def upcoming_course():
    batch = AddBatch.query.all()
    return render_template('course/upcoming.html', title='Upcoming Course', batch=batch)
