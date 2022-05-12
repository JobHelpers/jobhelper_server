from sqlalchemy import ForeignKey

from app import db
from app.mod_specialities.models import Speciality

class Speciality_subject(db.Model):
    __tablename__ = 'specialities_subjects'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    speciality_code = db.Column(db.String(10), ForeignKey('specialities.id'))
    subject_id = db.Column(db.Integer, unique=True, nullable=False)
    subject_status = db.Column(db.Enum, nullable=False)

