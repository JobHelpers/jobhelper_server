from flask import Blueprint, jsonify, request

from app import db, utils
from app.mod_collaborators.models import Collaborator

mod_collaborators = Blueprint('collaborators', __name__, url_prefix='/collaborators')

@mod_collaborators.route('/collaborators', methods=['GET'])
def findAll():
    data = [{
        'id': collaborator.id,
        'name': collaborator.name,
        'email': collaborator.email,
        'role': collaborator.role
    } for collaborator in Collaborator.query.all()]
    return  jsonify(data)

@mod_collaborators.route('/collaborators/<int:id>', methods=['GET'])
def findOne(id):
    db_query = Collaborator.query.get(id)
    data = utils.object_as_dict(db_query)
    return jsonify(data)

@mod_collaborators.route('/collaborators', methods=['POST'])
def create():
    name = request.form.get('name')
    email = request.form.get('email')
    role = request.form.get('role')
    collaborator = Collaborator(name=name, email=email, role=role)
    db.session.add(collaborator)
    db.session.flush()
    db.session.commit()
    return jsonify({
        "id": collaborator.id,
        "name": name,
        "email": email,
        "role": role
    })