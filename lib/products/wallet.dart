import 'package:flutter/material.dart';

class WalletProduct extends StatelessWidget {
  WalletProduct({super.key});

  final List<Map<String, dynamic>> products = List.generate(50, (index) {
    return {
      'name': 'Wallet ${index + 1}',
      'price': '\$${(index + 1) * 10}',
      'description':
          'High-quality leather wallet ${index + 1} with stylish design.',
      'image': 'https://picsum.photos/200/300?random=${index + 1}'
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
            children: [
              Image.network(
                product['image'],
                height: 100,
                width: 200,
                fit: BoxFit.fitWidth,
              ),
              Text(product['name']),
              Text(product['price']),
              Text(product['description']),
            ],
          ),
        );
      },
    );
  }
}
