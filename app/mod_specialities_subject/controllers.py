from flask import Blueprint, jsonify, request

from app import db, utils
from app.mod_specialities_subject.models import Speciality_subject

mod_specialities_subject = Blueprint('specialities_subject', __name__, url_prefix='/specialities_subject')

@mod_specialities_subject.route('/specialities_subject', methods=['GET'])
def findAll():
    specialities_subject = [{
        'id': specialities_subject.id,
        'speciality_code': specialities_subject.speciality_code,
        'subject_id': specialities_subject.subject_id,
        'subject_status': specialities_subject.subject_status
    } for specialities_subject in Speciality_subject.query.all()]
    return jsonify(specialities_subject)