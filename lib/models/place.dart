import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Place extends ChangeNotifier {
  String id;
  List<String> paises;
  String titulo;
  String imagemUrl;
  List<String> recomendacoes;
  double avaliacao;
  double custoMedio;
  bool isFavorite;

  Place(
      {required this.id,
      required this.paises,
      required this.titulo,
      required this.imagemUrl,
      required this.recomendacoes,
      required this.avaliacao,
      required this.custoMedio,
      this.isFavorite = false});

  void toggleFavorite() {
    this.isFavorite = !isFavorite;
    notifyListeners();
  }
}
