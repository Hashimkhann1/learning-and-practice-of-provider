

import 'package:flutter/material.dart';

class FavItemProvier with ChangeNotifier {

  final List _favItemsList = [];

  List get favItemsList => _favItemsList;


  void addFavToList (itme) {
    _favItemsList.add(itme);
    notifyListeners();
  }
  void removeFavToList (itme) {
    _favItemsList.remove(itme);
    notifyListeners();
  }

}