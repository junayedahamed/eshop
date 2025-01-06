import 'package:flutter/material.dart';

class CartItemList extends ChangeNotifier {
  int _quantitiy = 0;

  get quantity => _quantitiy;
  void add() {
    _quantitiy++;
    notifyListeners();
  }

  void remove() {
    _quantitiy--;
    notifyListeners();
  }

  removefromcart(int index) {
    cartitems.removeAt(index);
    notifyListeners();
  }
}

List<Map<String, dynamic>> cartitems = [];
