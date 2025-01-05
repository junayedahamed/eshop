import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eshop/bottomnavigator/NavBarIcon/navigation_bar_icon.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.onTap});

  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      animationCurve: Curves.decelerate,
      color: Colors.indigo,
      onTap: onTap,
      items: [
        NavigationBarIcon(
          iconData: Icons.home,
        ),
        NavigationBarIcon(
          iconData: Icons.shopping_cart,
        ),
        NavigationBarIcon(
          iconData: Icons.person,
        ),
      ],
    );
  }
}
