from sqlalchemy import ForeignKey
from app import db

class Max_min_grades(db.Model):
    __tablename__ = 'max_min_grades'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    year = db.Column(db.Integer, nullable=False)
    faculty_id = db.Column(db.Integer, ForeignKey('faculties.id'))
    speciality_code = db.Column(db.String(45), ForeignKey('specialities.code'))
    max_min_budget = db.Column(db.Float, nullable=False)
    max_min_contract = db.Column(db.Float, nullable=False)