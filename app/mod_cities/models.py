from sqlalchemy.orm import relationship

from app import db


class Cities(db.Model):
    __tablename__ = 'cities'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(127), nullable=False)
