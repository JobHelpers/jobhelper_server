from sqlalchemy.orm import relationship

from app import db


class Faculties(db.Model):
    __tablename__ = 'faculties'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.Text, nullable=False, unique=False)
    university_id = db.Column(db.Integer, ForeignKey('universities.id'), unique=False)
    speciality_code = db.Column(db.String(100), ForeignKey('specialities.code'), unique=False)
    short_description = db.Column(db.Text, unique=False, nullable=False)
    url = db.Column(db.Text, unique=False, nullable=False)
