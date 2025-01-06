import 'package:eshop/bottomnavigator/bottom_nav_bar.dart';
import 'package:eshop/bottomnavigator/navigation_bar_controller.dart';
import 'package:eshop/cart/cart_page.dart';
import 'package:eshop/pages/home/home_page.dart';
import 'package:eshop/user%20Page/user_info_page.dart';
import 'package:flutter/material.dart';

class EshopAppBarNavigationBar extends StatelessWidget {
  final NavigationBarController _controller = NavigationBarController();
  EshopAppBarNavigationBar({super.key});
  final List pages = [
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Eshop",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.9,
            fontSize: 20,
          ),
        ),
      ),
      body: ListenableBuilder(
          listenable: _controller,
          builder: (context, snapshot) {
            return Center(
              child: pages[_controller.indx],
            );
          }),
      bottomNavigationBar: ListenableBuilder(
          listenable: _controller,
          builder: (context, snapshot) {
            return BottomNavBar(onTap: (value) {
              _controller.chengeIndex(value);
            });
          }),
    );
  }
}
