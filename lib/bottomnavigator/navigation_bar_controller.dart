import 'package:flutter/material.dart';

class NavigationBarController extends ChangeNotifier {
  int _index = 0;
  get indx => _index;
  void chengeIndex(int newvalue) {
    _index = newvalue;
    // print("Changing");
    notifyListeners();
  }
}
