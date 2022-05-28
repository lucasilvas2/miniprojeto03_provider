import 'package:f3_lugares/models/place.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:provider/provider.dart';

class PlaceProvider extends ChangeNotifierProvider {
  final List<Place> _listPlace = [];

  PlaceProvider({required Create<ChangeNotifier?> create})
      : super(create: create);

  List<Place> get getListPlace => _listPlace;
}
