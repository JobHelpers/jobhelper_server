from sqlalchemy import ForeignKey

from app import db

class Speciality_subject(db.Model):
    __tablename__ = 'specialities_subjects'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    speciality_code = db.Column(db.String(10), ForeignKey('specialities.code'))
    subject_id = db.Column(db.Integer, ForeignKey('subjects.id'))
    subject_status = db.Column(db.Enum('main', 'mandatory', 'optional', name='subject_status'), nullable=False)

