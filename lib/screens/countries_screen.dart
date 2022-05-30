import 'package:f3_lugares/components/country_item.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:f3_lugares/models/place_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/my_data.dart';

class CountriesScreen extends StatelessWidget {
  // final bool _showFavoritePlaceAll;
  // CountriesScreen(this._showFavoritePlaceAll);
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<PlaceList>(context);
    // final List<Place> loadedPlaces = _showFavoritePlaceAll ? provider.getListPlace : provider.getFavoritePlace;
    return Container(
      child: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              200, //cada elemento com extenso maxima de 200 pixel
          childAspectRatio: 3 / 2, //proporcao de cada elemento dentro do grid
          crossAxisSpacing: 20, //espacamento no eixo cruzado
          mainAxisSpacing: 20, //espacamento no eixo principal
        ),
        children: DUMMY_COUNTRIES.map((country) {
          return CountryItem(country);
        }).toList(),
      ),
    );
  }
}
