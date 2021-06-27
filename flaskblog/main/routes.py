from flask import render_template, request, Blueprint
from flaskblog.models import Post, Contact

main = Blueprint('main', __name__)


@main.route("/")
@main.route("/home")
def home():
    page = request.args.get('page', 1, type=int)
    posts = Post.query.order_by(Post.date_posted.asc()).paginate(page=page, per_page=5)
    new_users = len(Contact.query.filter_by(is_seen=0).all())
    return render_template('home.html', posts=posts, new_user=new_users, title='home')


@main.route("/about")
def about():
    return render_template('about.html', title='About')
