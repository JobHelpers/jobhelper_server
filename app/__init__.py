from flask import Flask
from flask_cors import CORS
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
CORS(app)
app.config.from_object('config')

db: SQLAlchemy = SQLAlchemy(app)

# Import a modules using its blueprint handler variable
from app.mod_collaborators.controllers import mod_collaborators
from app.mod_cities.controllers import mod_cities
from app.mod_specialities.controllers import mod_specialities
from app.mod_specialities_subject.controllers import mod_specialities_subject
from app.mod_subjects.controllers import mod_subjects
from app.mod_faculties.controllers import mod_faculties
from app.mod_universities.controllers import mod_universities
from app.mod_coefficients.controllers import mod_coefficients
from app.mod_max_min_grades.controllers import mod_max_min_grades

# Register blueprint(s)
app.register_blueprint(mod_collaborators, url_prefix='/api')
app.register_blueprint(mod_specialities, url_prefix='/api')
app.register_blueprint(mod_specialities_subject, url_prefix='/api')
app.register_blueprint(mod_subjects, url_prefix='/api')
app.register_blueprint(mod_faculties, url_prefix='/api')
app.register_blueprint(mod_universities, url_prefix='/api')
app.register_blueprint(mod_cities, url_prefix='/api')
app.register_blueprint(mod_coefficients, url_prefix='/api')
app.register_blueprint(mod_max_min_grades, url_prefix='/api')

db.create_all()
db.session.execute(f"  \
INSERT INTO public.collaborators (id, name, email, role) VALUES (1, 'Stanislav Denysenko', 'lohopusik67@gmail.com', 'Frontend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (2, 'Vitaliy Sevastyanov', 'vetal.sevastyanov@gmail.com', 'Frontend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (3, 'Nazar Bylen', 'nazar.bylen.ir.2021@lpnu.ua', 'Backend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (4, 'Orest Borshovskiy', 'oborshovskiy@gmail.com', 'Backend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (5, 'Ihor Patko', 'patkoihor2004@gmail.com', 'Backend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (6, 'Maksym Morochenets', 'maksmorroo@gmail.com', 'Backend dev'); \
INSERT INTO public.collaborators (id, name, email, role) VALUES (7, 'Ihor Byra', 'ihorbyra@gmail.com', 'Mentor');")