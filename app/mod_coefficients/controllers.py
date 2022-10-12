from flask import Blueprint, jsonify

from app import db
from app.mod_coefficients.models import Coefficients

mod_coefficients = Blueprint('coefficients', __name__, url_prefix='/coefficients')

@mod_coefficients.route('/coefficients', methods=['GET'])
def findAll():
    coefficients = [{
        'id': coefficient.id,
        'coefficient': coefficient.coefficient,
        'min_grade': coefficient.min_grade,
        'subject_id': coefficient.subject_id,
        'faculty_id': coefficient.faculty_id,
    } for coefficient in Coefficients.query.all()]
    return jsonify(coefficients)

def getCoefficientsByFaculty(facultyId):
    query = f"SELECT coefficients.* , subjects.name AS subject_name \
            FROM coefficients \
            INNER JOIN subjects ON subjects.id = coefficients.subject_id \
            WHERE faculty_id = {facultyId}"

    results = db.session.execute(
        query
    ).all()

    data = [{
        'id': row.id,
        'coefficient': row.coefficient,
        'minGrade': row.min_grade,
        'subjectId': row.subject_id,
        'subjectName': row.subject_name,
        'facultyId': row.faculty_id,
    } for row in results]
    return data