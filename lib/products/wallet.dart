import 'dart:math';

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
      'rating': "${rng.nextInt(6).toDouble()}", // Rating between 0 to 5 stars
    };
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.network(
                    product['image'],
                    height: 85,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    product['name'],
                    style: productNameTextstyle(),
                  ),
                  Text(product['description']),
                  Row(
                    children: [
                      Text(product['rating'],
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price:${product['price']}"),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Item added  to cart"),
                          padding: EdgeInsets.all(15),
                          duration: Duration(seconds: 1, milliseconds: 500),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
