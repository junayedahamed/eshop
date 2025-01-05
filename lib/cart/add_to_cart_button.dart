import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.onpress,
  });
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpress,
      icon: Icon(
        Icons.add_shopping_cart,
        color: Colors.indigo,
      ),
    );
  }
}
