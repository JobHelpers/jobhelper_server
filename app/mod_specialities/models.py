from sqlalchemy.orm import relationship
from app import db

class Speciality(db.Model):
    __tablename__ = 'specialities'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    code = db.Column(db.String(45), unique=True, nullable=False)
    name = db.Column(db.Text, nullable=False)
    parent = db.Column(db.Integer, default=0, nullable=True)
    children = relationship("Speciality_subject")

