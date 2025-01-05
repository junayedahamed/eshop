import 'package:flutter/material.dart';

productNameTextstyle() {
  return TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
}

productPriceDecoration({bool stroke = false}) {
  if (stroke) {
    return TextStyle(
      color: Colors.black,
      decoration: TextDecoration.lineThrough,
    );
  } else {
    return;
  }
}
