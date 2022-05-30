import 'package:f3_lugares/components/place_item.dart';
import 'package:f3_lugares/data/my_data.dart';
import 'package:f3_lugares/models/country.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:f3_lugares/models/place_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryPlacesScreen extends StatelessWidget {
  final bool _showFavoritePlaceAll = true;
  //CountryPlacesScreen(this._showFavoritePlaceAll);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaceList>(context);
    final List<Place> loadedPlaces = provider.getListPlace;

    final country = ModalRoute.of(context)!.settings.arguments as Country;

    // final countryPlaces = DUMMY_PLACES.where((places) {
    //   return places.paises.contains(country.id);
    // }).toList();
    final countryPlaces = loadedPlaces.where((places) {
      return places.paises.contains(country.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(country.title),
      ),
      body: ListView.builder(
          itemCount: countryPlaces.length,
          itemBuilder: (ctx, index) {
            return PlaceItem(countryPlaces[index]);
          }),
    );
  }
}
