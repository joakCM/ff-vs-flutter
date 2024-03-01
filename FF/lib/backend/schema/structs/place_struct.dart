// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaceStruct extends BaseStruct {
  PlaceStruct({
    String? name,
    double? rating,
    String? image,
    LatLng? location,
    bool? isFavorite,
  })  : _name = name,
        _rating = rating,
        _image = image,
        _location = location,
        _isFavorite = isFavorite;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;
  void incrementRating(double amount) => _rating = rating + amount;
  bool hasRating() => _rating != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;
  bool hasLocation() => _location != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;
  bool hasIsFavorite() => _isFavorite != null;

  static PlaceStruct fromMap(Map<String, dynamic> data) => PlaceStruct(
        name: data['name'] as String?,
        rating: castToType<double>(data['rating']),
        image: data['image'] as String?,
        location: data['location'] as LatLng?,
        isFavorite: data['is_favorite'] as bool?,
      );

  static PlaceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlaceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'rating': _rating,
        'image': _image,
        'location': _location,
        'is_favorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'is_favorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PlaceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaceStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        isFavorite: deserializeParam(
          data['is_favorite'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PlaceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaceStruct &&
        name == other.name &&
        rating == other.rating &&
        image == other.image &&
        location == other.location &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, rating, image, location, isFavorite]);
}

PlaceStruct createPlaceStruct({
  String? name,
  double? rating,
  String? image,
  LatLng? location,
  bool? isFavorite,
}) =>
    PlaceStruct(
      name: name,
      rating: rating,
      image: image,
      location: location,
      isFavorite: isFavorite,
    );
