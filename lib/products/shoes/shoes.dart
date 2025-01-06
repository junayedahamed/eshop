import 'dart:math';

import 'package:eshop/products/product%20Gridview/product_grid_view.dart';
import 'package:flutter/material.dart';

class ProDuctShoes extends StatelessWidget {
  ProDuctShoes({super.key});
  static var rng = Random();
  final List<Map<String, dynamic>> products = List.generate(50, (index) {
    bool showPrev = rng.nextDouble() < 0.6; // 20% chance of being true

    return {
      'name': 'Shoes ${index + 1}',
      'price':
          '\$${((index + 1) * rng.nextInt(6) - ((index + 1) * rng.nextInt(6) * 0.10)).toInt()}',
      'priviousPrice': '\$${(index + 1) * rng.nextInt(6)}',
      'description':
          'High-quality leather wallet ${index + 1} with stylish design.',
      'image': 'https://picsum.photos/200/300?random=${index + 1}',
      'rating': "${double.parse((rng.nextDouble() * 6).toStringAsFixed(1))}",
      'showprev': showPrev,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best Shoes",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: ProductGridView(
            products: products,
            // cartaddonpress: () {},
            // navigateOnpress: () {},
          ),
        ),
      ],
    );
  }
}
