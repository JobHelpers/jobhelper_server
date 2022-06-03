from app import db

class Collaborator(db.Model):
    __tablename__ = 'universities'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.tinytext, unique=False, nullable=False)
    city_id = db.Column(db.Integer, unique=True, nullable=False)
    parent = db.Column(db.Integer, nullable=False)
    children = relationship("cities")
