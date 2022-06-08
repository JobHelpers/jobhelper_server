from sqlalchemy.orm import relationship
from app import db

class Subjects(db.Model):
    __tablename__ = 'subjects'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), nullable=False)
    children = relationship("Speciality_subject")