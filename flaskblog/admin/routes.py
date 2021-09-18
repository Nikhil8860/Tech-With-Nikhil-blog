from flask import render_template, request, Blueprint, redirect, url_for, flash, current_app as app
from flaskblog.admin.forms import AddBatchForm
from flaskblog.models import AddBatch, Enquiry
from flaskblog import db
from flaskblog import excel
from flask_login import login_required, current_user
from flaskblog import Config

admin = Blueprint('admin', __name__)


@admin.route("/add-batch", methods=['GET', 'POST'])
@login_required
def add_batch():
    form = AddBatchForm()
    if form.validate_on_submit():
        start = form.start_at.data
        end = form.end_at.data
        time = str(start) + "-" + str(end)
        days = ",".join(form.batch_days.data)
        date = form.date.data
        post = AddBatch(course_name=form.course.data, days=days, time=time, date=date)
        db.session.add(post)
        db.session.commit()

        flash('New Batch Added Successfully!', 'success')
        return redirect(url_for('admin.add_batch'))
    return render_template('admin/add-batch.html', title='Add New Batch', form=form, legend='Add New Batch')


@admin.route("/show-course-enquiry")
@login_required
def show_course_enquiry():
    if current_user.email == Config.ADMIN_MAIL:
        page = request.args.get('page', 1, type=int)
        contact = Enquiry.query.order_by(Enquiry.enquiry_date.desc()).paginate(page=page, per_page=10)
        return render_template('admin/show-course-enquiry.html', contacts=contact, title='Course Enquiry')
    return redirect('/')


@admin.route("/export.csv", methods=['GET'])
@login_required
def download_enquiry():
    query_sets = Enquiry.query.all()
    column_names = ['name', 'phone', 'message', 'enquiry_date']
    return excel.make_response_from_query_sets(query_sets, column_names, "csv")
