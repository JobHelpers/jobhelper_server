from flask import Blueprint, jsonify, request
from app import db

mod_universities = Blueprint('University', __name__, url_prefix='/universities')


@mod_universities.route('/universities', methods=['GET'])
def findUniversities():
    speciality_code = request.args.get('speciality')
    city_id = request.args.get('city')

    query = db.session.execute(f"SELECT universities.* FROM universities\
                                INNER JOIN faculties ON faculties.university_id = universities.id\
                                WHERE universities.city_id={city_id}\
                                AND faculties.speciality_code='{speciality_code}'\
                                GROUP BY universities.id").all()
    data = [{
        'id': row.id,
        'name': row.name,
        'city_id': row.city_id
    } for row in query]

    return jsonify(data)
