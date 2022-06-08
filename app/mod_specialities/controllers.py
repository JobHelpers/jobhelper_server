from flask import Blueprint, jsonify
from app.mod_specialities.models import Speciality

mod_specialities = Blueprint('specialities', __name__, url_prefix='/specialities')

@mod_specialities.route('/specialities', methods=['GET'])
def findAll():
    specialities = [{
        'id': specialities.id,
        'code': specialities.code,
        'name': specialities.name,
        'parent': specialities.parent
    } for specialities in Speciality.query.all()]
    return jsonify(specialities)