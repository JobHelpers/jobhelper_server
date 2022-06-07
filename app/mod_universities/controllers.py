from flask import Blueprint, jsonify, request

from app import db
from app.mod_universities.models import University

mod_universities = Blueprint('University', name, url_prefix='/universities')


@mod_universities.route('/universities', methods=['GET'])
def findUniversities():
    speciality_code = request.args.get('speciality_code')
    city_id = request.args.get('city_id')

    query = db.session.execute(f'SELECT * FROM universities\
                                INNER JOIN faculties ON faculties.speciality_code = {speciality_code}\
                                WHERE city_id = {city_id}\
                                GROUP BY universities.id').all()
    data = [{
        'id ': row.id,
        'name': row.name,
        ' city_id': row.city_id
    } for row in query]

    return jsonify(data)
