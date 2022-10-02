from flask import Blueprint, jsonify

from app.mod_coefficients.models import Coefficients

mod_coefficients = Blueprint('coefficients', __name__, url_prefix='/coefficients')

@mod_coefficients.route('/coefficients', methods=['GET'])
def findAll():
    coefficients = [{
        'id': coefficient.id,
        'coefficient_code': coefficient.coefficient_code,
        'min_grade': coefficient.min_grade,
        'subject_id': coefficient.subject_id,
        'faculty_id': coefficient.faculty_id,
    } for coefficient in Coefficients.query.all()]
    return jsonify(coefficients)