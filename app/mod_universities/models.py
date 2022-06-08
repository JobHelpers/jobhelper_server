from app import db
from sqlalchemy import ForeignKey

class University(db.Model):
    __tablename__ = 'universities'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.Text, unique=False, nullable=False)
    city_id = db.Column(db.Integer, ForeignKey('cities.id'))