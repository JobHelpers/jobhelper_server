from flask import Blueprint, jsonify

from app import db
from app.mod_specialities_subject.models import Speciality_subject

mod_specialities_subject = Blueprint('specialities_subject', __name__, url_prefix='/specialities_subject')

@mod_specialities_subject.route('/specialities_subject_all', methods=['GET'])
def findAll():

    specialities_subject = [{
        'id': specialities_subject.id,
        'speciality_code': specialities_subject.speciality_code,
        'subject_id': specialities_subject.subject_id,
        'subject_status': specialities_subject.subject_status
    } for specialities_subject in Speciality_subject.query.all()]

    return jsonify(specialities_subject)

@mod_specialities_subject.route('/specialities_subject', methods=['GET'])
def findSpec():

     query = db.session.execute('SELECT t1.speciality_code, t1.subject_status, GROUP_CONCAT(t2.subject_id) AS subject_ids\
              FROM specialities_subjects t1\
              INNER JOIN specialities_subjects t2\
              ON t2.id=t1.id\
              GROUP BY t1.speciality_code, t1.subject_status\
              ORDER BY t1.id, t1.subject_status').all()

     data = [{
          'speciality_code': row.speciality_code,
          'subject_status': row.subject_status,
          'subject_ids': row.subject_ids
     } for row in query]

     print(data)

     return jsonify(data)