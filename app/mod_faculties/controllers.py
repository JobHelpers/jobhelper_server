from flask import Blueprint, jsonify, request
from sqlalchemy import and_
from app.mod_faculties.models import Faculties

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
