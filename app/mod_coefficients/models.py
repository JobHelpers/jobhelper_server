from sqlalchemy import ForeignKey
from app import db

class Coefficients(db.Model):
    __tablename__ = 'coefficients'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    coefficient_code = db.Column(db.float)
    subject_id = db.Column(db.Integer, ForeignKey('subjects.id'))
    faculty_id = db.Column(db.Integer, ForeignKey('faculties.id'))