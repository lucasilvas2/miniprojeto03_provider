import 'package:f3_lugares/components/place_item.dart';
import 'package:f3_lugares/models/favorite.dart';
import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Meus Lugares Favoritos',
            style: Theme.of(context).textTheme.headline4,
          ),
          Expanded(
            child: Consumer<Favorite>(
              builder: (context, value, child) {
                //List<Place> favorite = value.getListFavoritePlace;
                return ListView.builder(
                    itemCount: value.getListFavoritePlace.length,
                    itemBuilder: (ctx, index) {
                      return value.getListFavoritePlace.isEmpty
                          ? Text('Lista de favotiros vazia')
                          : PlaceItem(value.getListFavoritePlace[index]);
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
