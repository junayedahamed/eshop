import 'dart:math';

import 'package:eshop/cart/add_to_cart_button.dart';
import 'package:eshop/cart/adding_notification_snacbar.dart';
import 'package:eshop/products/product%20Gridview/product_grid_view.dart';
import 'package:eshop/products/product_name_text_style.dart';
import 'package:flutter/material.dart';

class WalletProduct extends StatelessWidget {
  WalletProduct({super.key});
  static var rng = Random();
  // List of wallet products
  final List<Map<String, dynamic>> products = List.generate(50, (index) {
    return {
      'name': 'Wallet ${index + 1}',
      'price': '\$${(index + 1) * 10}',
      'description':
          'High-quality leather wallet ${index + 1} with stylish design.',
      'image': 'https://picsum.photos/200/300?random=${index + 1}',
      'rating': rng
          .nextInt(6)
          .toDouble()
          .toStringAsFixed(1), // Rating between 0 to 5 stars
    };
  });

  @override
  Widget build(BuildContext context) {
    return ProductGridView(products: products);
  }
}
