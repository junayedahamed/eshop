import 'package:flutter/material.dart';

class NavigationBarIcon extends StatelessWidget {
  const NavigationBarIcon({super.key, required this.iconData});
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 30,
      color: Colors.white,
    );
  }
}
