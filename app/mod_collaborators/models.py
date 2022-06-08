from app import db

class Collaborator(db.Model):
    __tablename__ = 'collaborators'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), unique=False, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    role = db.Column(db.String(120), nullable=False)