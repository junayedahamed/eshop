import 'package:eshop/cart/add_to_cart_button.dart';
import 'package:eshop/cart/adding_notification_snacbar.dart';
import 'package:eshop/products/product_name_text_style.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.products});

  final List<Map<String, dynamic>> products;
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
              GestureDetector(
                onTap: () {},
                child: Column(
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
                      spacing: 7,
                      children: [
                        Text(product['rating'],
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                            )),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price:${product['price']}"),
                  AddToCartButton(
                    onpress: () {
                      addingCartNotification(context);
                    },
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
