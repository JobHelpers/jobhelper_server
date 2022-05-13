from flask import Blueprint, jsonify, request

from app import db, utils
from app.mod_subjects.models import Subjects

mod_subjects = Blueprint('subjects', __name__, url_prefix='/subjects')

@mod_subjects.route('/subjects', methods=['GET'])
def findAll():
    subjects = [{
        'id': subjects.id,
        'name': subjects.name,
    } for subjects in Subjects.query.all()]
    return jsonify(subjects)