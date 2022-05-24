import 'package:f3_lugares/components/place_item.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';

class Favorite extends ChangeNotifier {
  final List<Place> _listFavoritePlace = [];

  List<Place> get getListFavoritePlace => _listFavoritePlace;

  void addPlaceFavorite(Place placeItem) {
    _listFavoritePlace.add(placeItem);
    notifyListeners();
  }

  void removePlaceFavorite(Place placeItem) {
    _listFavoritePlace.remove(placeItem);
    notifyListeners();
  }
}
