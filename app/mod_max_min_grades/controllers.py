from flask import Blueprint, jsonify

from app import db
from app.mod_max_min_grades.models import Max_min_grades

mod_max_min_grades = Blueprint('max_min_grades', __name__, url_prefix='/mod_max_min_grades')

@mod_max_min_grades.route('/max_min_grades', methods=['GET'])
def findAll():
    max_min_grades = [{
        'id': max_min_grades.id,
        'year': max_min_grades.year,
        'faculty_id': max_min_grades.faculty_id,
        'speciality_code': max_min_grades.speciality_code,
        'max_min_budget': max_min_grades.max_min_budget,
        'max_min_contract': max_min_grades.max_min_contract,
    } for max_min_grades in Max_min_grades.query.all()]
    return jsonify(max_min_grades)

def getMaxMinGradesByFaculty(facultyId):
    query = f"SELECT * FROM max_min_grades \
              WHERE faculty_id = {facultyId}"

    results = db.session.execute(
        query
    ).all()

    data = [{
        'id': row.id,
        'year': row.year,
        'facultyId': row.faculty_id,
        'specialityCode': row.speciality_code,
        'maxMinBudget': row.max_min_budget,
        'maxMinContract': row.max_min_contract,
    } for row in results]
    return data