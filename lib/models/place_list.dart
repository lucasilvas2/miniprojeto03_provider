import 'package:f3_lugares/components/place_item.dart';
import 'package:f3_lugares/data/my_data.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';

class PlaceList extends ChangeNotifier {
  final List<Place> _listPlace = DUMMY_PLACES;

  bool _showFavoriteOnly = false;

  List<Place> get getListPlace => _listPlace;

  List<Place> get getFavoritePlace {
    return _listPlace.where((place) => place.isFavorite).toList();
  }

  void addPlaceFavorite(Place place) {
    _listPlace.add(place);
    notifyListeners();
  }

  void removePlaceFavorite(Place place) {
    _listPlace.remove(place);
    notifyListeners();
  }

  void showFavoritePlaceOnly() {
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showFavoritePlaceAll() {
    _showFavoriteOnly = false;
    notifyListeners();
  }
}
