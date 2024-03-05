import 'package:flutter/foundation.dart';
import 'package:travelmate_flutter/data/places/place.dart';
import 'package:travelmate_flutter/data/places/places.dart';

class PlacesProvider extends ChangeNotifier {
  String _searchTerm = '';
  List<Place> _places = placesList;
  final List<Place> _favoritePlaces = [];

  String get searchTerm => _searchTerm;
  List<Place> get places => _places;
  List<Place> get favoritePlaces => _favoritePlaces;

  void updateSearchTerm(String term) {
    _searchTerm = term;
    _places = placesList
        .where((place) => place.name.toLowerCase().contains(term.toLowerCase()))
        .toList();

    notifyListeners();
  }

  void addToFavorites(Place place) {
    if (_favoritePlaces.contains(place)) {
      return;
    } else {
      _favoritePlaces.add(place);
      notifyListeners();
    }
  }

  void removeFromFavorites(Place place) {
    if (!_favoritePlaces.contains(place)) {
      return;
    } else {
      _favoritePlaces.remove(place);
      notifyListeners();
    }
  }
}
