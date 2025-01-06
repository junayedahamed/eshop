import 'dart:math';
import 'package:eshop/products/product%20Gridview/product_grid_view.dart';
import 'package:flutter/material.dart';

class ProductBags extends StatelessWidget {
  ProductBags({super.key});
  static Random rng = Random();
  final List<Map<String, dynamic>> products = List.generate(50, (index) {
    return {
      'name': 'Bag ${index + 1}',
      'price':
          '\$${((index + 1) * rng.nextInt(6) - ((index + 1) * rng.nextInt(6) * 0.10)).toInt()}',
      'priviousPrice': '\$${(index + 1) * rng.nextInt(6)}',

      'description':
          'High-quality leather wallet ${index + 1} with stylish design.',
      'image': 'https://picsum.photos/200/300?random=${index + 1}',
      'rating':
          "${double.parse((rng.nextDouble() * 6).toStringAsFixed(1))}", // Rating between 0 to 5 stars
    };
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best Sells",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: ProductGridView(
            previous: true,
            products: products,
            // cartaddonpress: () {
            //   addingCartNotification(context);
            // },
            // navigateOnpress: () {},
          ),
        ),
      ],
    );
  }
}
