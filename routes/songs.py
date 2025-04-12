from flask import Blueprint, jsonify, request
from services.songs_services import SongsService

bp = Blueprint('songs', __name__, url_prefix='/songs')

@bp.route('/', methods=['GET'])
def list_songs():
    """
    Endpoint pour récupérer toutes les chansons avec des filtres optionnels.
    """
    filters = request.args.to_dict()
    result = SongsService.get_all_songs(filters)
    return jsonify(result)

@bp.route('/<int:song_id>', methods=['GET'])
def get_song_by_id(song_id):
    """
    Endpoint pour récupérer une chanson spécifique par son ID.
    """
    result = SongsService.get_song_by_id(song_id)
    if result is None:
        return jsonify({"error": "Chanson introuvable."}), 404
    return jsonify(result)

@bp.route('/recommendations', methods=['GET'])
def get_recommendations():
    """
    Endpoint pour recommander des chansons en fonction de critères spécifiques.
    """
    min_bpm = request.args.get('min_bpm', type=int)
    max_bpm = request.args.get('max_bpm', type=int)
    style = request.args.get('style')
    duration = request.args.get('duration', type=int)

    result = SongsService.get_recommendations(min_bpm, max_bpm, style, duration)
    return jsonify(result)

@bp.route('/styles', methods=['GET'])
def get_styles():
    """
    Endpoint pour récupérer tous les styles musicaux disponibles.
    """
    result = SongsService.get_styles()
    return jsonify(result)

@bp.route('/artists', methods=['GET'])
def get_artists():
    """
    Endpoint pour récupérer tous les artistes disponibles.
    """
    result = SongsService.get_artists()
    return jsonify(result)

@bp.route('/artist/<string:artist_name>', methods=['GET'])
def get_songs_by_artist(artist_name):
    """
    Endpoint pour récupérer toutes les chansons d'un artiste spécifique.
    """
    result = SongsService.get_songs_by_artist(artist_name)
    return jsonify(result)

@bp.route('/bpm-range', methods=['GET'])
def get_songs_by_bpm_range():
    """
    Endpoint pour récupérer toutes les chansons dans une plage de BPM donnée.
    """
    min_bpm = request.args.get('min_bpm', type=int)
    max_bpm = request.args.get('max_bpm', type=int)

    result = SongsService.get_songs_by_bpm_range(min_bpm, max_bpm)
    return jsonify(result)

@bp.route('/sorted', methods=['GET'])
def get_sorted_songs():
    """
    Endpoint pour récupérer toutes les chansons triées par un critère spécifique.
    """
    sort_by = request.args.get('sort_by', 'bpm')  # Par défaut, tri par BPM
    order = request.args.get('order', 'asc')  # Par défaut, ordre croissant

    result = SongsService.get_sorted_songs(sort_by, order)
    return jsonify(result)