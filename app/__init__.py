from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config.from_object('config')

db = SQLAlchemy(app)

# Import a modules using its blueprint handler variable
from app.mod_collaborators.controllers import mod_collaborators

# Register blueprint(s)
app.register_blueprint(mod_collaborators, url_prefix='/api')

db.create_all()