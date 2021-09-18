from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
from flask_mail import Mail
from flaskblog.config import Config
import flask_excel as excel
db = SQLAlchemy()
bcrypt = Bcrypt()
login_manager = LoginManager()
login_manager.login_view = 'users.login'
login_manager.login_message_category = 'info'
mail = Mail()


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.update(
        MAIL_SERVER='smtp.gmail.com',
        MAIL_PORT='465',
        MAIL_USE_SSL=True,
        MAIL_USE_TLS=False,
        MAIL_USERNAME=Config.ADMIN_MAIL,
        MAIL_PASSWORD=Config.PASSWORD
    )

    app.config.from_object(Config)
    db.init_app(app)
    bcrypt.init_app(app)
    excel.init_excel(app)
    login_manager.init_app(app)
    mail.init_app(app)
    from flaskblog.users.routes import users
    from flaskblog.posts.routes import posts
    from flaskblog.main.routes import main
    from flaskblog.course.routes import course
    from flaskblog.admin.routes import admin
    app.register_blueprint(users)
    app.register_blueprint(posts)
    app.register_blueprint(main)
    app.register_blueprint(course)
    app.register_blueprint(admin)

    with app.app_context():
        db.create_all()

    return app
