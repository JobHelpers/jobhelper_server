from flask import Blueprint, jsonify, request
from sqlalchemy import and_

from app import db
from app.mod_faculties.models import Faculties
from app.mod_coefficients.controllers import getCoefficientsByFaculty
from app.mod_max_min_grades.controllers import getMaxMinGradesByFaculty

mod_faculties = Blueprint('faculties', __name__, url_prefix='/faculties')

@mod_faculties.route('/faculties', methods=['GET'])
def show_faculties():
    university_id = request.args.get('university')
    speciality_code = request.args.get('speciality')

    result = Faculties\
        .query\
        .filter(and_(Faculties.university_id == university_id,
                     Faculties.speciality_code == speciality_code))\
        .all()

    data = [{
        'id': row.id,
        'name': row.name,
        'speciality_code': row.speciality_code,
        'university_id': row.university_id,
        'short_description': row.short_description,
        'url': row.url
    } for row in result]

    return jsonify(data)

@mod_faculties.route('/faculties/grades', methods=['GET'])
def faculties_grades():
    university_id = request.args.getlist('universityId')
    speciality_code = request.args.getlist('specialityCode')

    query = f"SELECT faculties.*, universities.name AS university_name \
            FROM faculties \
            INNER JOIN universities ON faculties.university_id=universities.id \
            WHERE university_id IN {tuple(university_id)} "

    results = db.session.execute(
        query
    ).all()

    data = [{
        'id': row.id,
        'name': row.name,
        'specialityCode': row.speciality_code,
        'universityId': row.university_id,
        'universityName': row.university_name,
        'shortDescription': row.short_description,
        'url': row.url,
        'coofecients': getCoefficientsByFaculty(row.id),
        'maxMinGrade': getMaxMinGradesByFaculty(row.id)
    } for row in results]
    return jsonify([data])