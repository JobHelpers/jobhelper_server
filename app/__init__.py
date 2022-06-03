from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config.from_object('config')

db = SQLAlchemy(app)

# Import a modules using its blueprint handler variable
from app.mod_collaborators.controllers import mod_collaborators
from app.mod_subjects.controllers import mod_subjects
from app.mod_cities.controllers import mod_cities

# Register blueprint(s)
app.register_blueprint(mod_collaborators, url_prefix='/api')
app.register_blueprint(mod_subjects, url_prefix='/api/subjects')
app.register_blueprint(mod_subjects, url_prefix='/api/cities')

db.create_all()
