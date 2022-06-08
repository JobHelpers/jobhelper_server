from flask import Blueprint, jsonify
from app.mod_cities.models import Cities

mod_cities = Blueprint('cities', __name__, url_prefix='/cities')


@mod_cities.route('/cities', methods=['GET'])
def findAll():
    cities = [{
        'id': cities.id,
        'name': cities.name,
    } for cities in Cities.query.all()]
    return jsonify(cities)
