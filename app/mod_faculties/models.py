from sqlalchemy.orm import relationship

from app import db


class Collaborator(db.Model):
    __tablename__ = 'faculties'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.text, unique=False, nullable=False)
    speciality_code = db.Column(db.String(100), unique=True, nullable=False)
    university_id = db.Column(db.Integer, unique=True, nullable=False)
    short_description = db.Column(db.text, unique=False, nullable=False)
    url = db.Column(db.text, unique=False, nullable=False)
    fir_children = relationship("Specialities")
    sec_children = relationship("Universities")
