import 'package:flutter/material.dart';

addingCartNotification(context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Item added  to cart"),
      padding: EdgeInsets.all(15),
      duration: Duration(seconds: 1, milliseconds: 500),
      clipBehavior: Clip.antiAliasWithSaveLayer,
    ),
  );
}
