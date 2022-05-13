from flask import Blueprint, jsonify, request, session
from sqlalchemy.orm import session

from app import db, utils
from app.mod_specialities_subject.models import Speciality_subject

mod_specialities_subject = Blueprint('specialities_subject', __name__, url_prefix='/specialities_subject')
'''
@mod_specialities_subject.route('/specialities_subject', methods=['GET'])
def findAll():

    specialities_subject = [{
        'id': specialities_subject.id,
        'speciality_code': specialities_subject.speciality_code,
        'subject_id': specialities_subject.subject_id,
        'subject_status': specialities_subject.subject_status
    } for specialities_subject in Speciality_subject.query.all()]

    return jsonify(specialities_subject)
'''

@mod_specialities_subject.route('/specialities_subject', methods=['GET'])
def findSpec():
     subject_id = int(request.args.get('subject_id'))
     result = ''

     specialities_subject = [{
          'id': specialities_subject.id,
          'speciality_code': specialities_subject.speciality_code,
          'subject_id': specialities_subject.subject_id,
          'subject_status': specialities_subject.subject_status
     } for specialities_subject in Speciality_subject.query.all()]

     spec_list = list()
     for x in range(0, len(specialities_subject)):
          for key, value in specialities_subject[x].items():
               ids = str(key) + ':' + str(value)
               if (ids == f'subject_id:{subject_id}'):
                    spec_list.append(str(specialities_subject[x]))
               else:
                    pass


     return jsonify(spec_list)