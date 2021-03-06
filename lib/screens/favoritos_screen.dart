import 'package:f3_lugares/components/place_item.dart';
import 'package:f3_lugares/models/place_list.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaceList>(context);
    final List<Place> loadedPlaces = provider.getFavoritePlace;
    return Center(
      child: Column(
        children: [
          Text(
            'Meus Lugares Favoritos',
            style: Theme.of(context).textTheme.headline4,
          ),
          // Expanded(
          //   child: Consumer<PlaceList>(
          //     builder: (context, value, child) {
          //       //List<Place> favorite = value.getListFavoritePlace;
          //       return ListView.builder(
          //           itemCount: value.getListPlace.length,
          //           itemBuilder: (ctx, index) {
          //             return value.getListPlace.isEmpty
          //                 ? Text('Lista de favotiros vazia')
          //                 : PlaceItem(value.getListPlace[index]);
          //           });
          //     },
          //   ),
          // ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: loadedPlaces.length,
                  itemBuilder: (ctx, index) {
                    return loadedPlaces.isEmpty
                        ? Text('Lista de favotiros vazia')
                        : PlaceItem(loadedPlaces[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
