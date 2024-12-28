from flask import render_template, request, Blueprint
from flaskblog.models import Post, Contact, Course

main = Blueprint('main', __name__)


@main.app_errorhandler(404)
def handle_404(err):
    return render_template('404.html'), 404


@main.route("/")
def course():
    print(request.url)
    return render_template('index.html', title='Course', data=request.url)


@main.route("/python-blog")
def home():
    page = request.args.get('page', 1, type=int)
    # posts = Post.query.order_by(Post.date_posted.asc()).paginate(page=page, per_page=5)
    posts = Post.query.filter_by(course_id=1).paginate(page=page, per_page=5)
    new_users = len(Contact.query.filter_by(is_seen=0).all())
    return render_template('home.html', posts=posts, new_user=new_users, title='Blog')


@main.route("/ds-blog")
def data_structure():
    page = request.args.get('page', 1, type=int)
    posts = Post.query.filter_by(course_id=2).paginate(page=page, per_page=5)
    new_users = len(Contact.query.filter_by(is_seen=0).all())
    return render_template('data-structure.html', posts=posts, new_user=new_users, title='Data Structure')


@main.route("/django-blog")
def django():
    page = request.args.get('page', 1, type=int)
    posts = Post.query.filter_by(course_id=3).paginate(page=page, per_page=5)
    new_users = len(Contact.query.filter_by(is_seen=0).all())
    return render_template('django-blog.html', posts=posts, new_user=new_users, title='Django')


@main.route("/about")
def about():
    return render_template('about.html', title='About')


@main.route("/compiler")
def compiler():
    return render_template('compiler.html', title='Compiler')
