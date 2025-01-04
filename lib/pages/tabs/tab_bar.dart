import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25,
        ),
        ButtonsTabBar(
          labelStyle: TextStyle(color: Colors.black),
          buttonMargin: EdgeInsets.all(15),
          height: 70,
          borderColor: Colors.indigo,
          duration: 300,
          borderWidth: 2,
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(120),
          ),
          unselectedBorderColor: Colors.grey,
          unselectedBackgroundColor: Colors.white,
          radius: 15,
          controller: tabController,
          elevation: 5,
          labelSpacing: 5,
          tabs: [
            Tab(
              text: "Wallet",
              icon: Icon(
                Icons.wallet,
                color: Colors.indigo,
              ),
              // child: Text("data"),
            ),
            Tab(
              text: "Shoes",
              //    child: Text("data"),
              icon: Icon(
                Icons.card_travel,
                color: Colors.indigo,
              ),
            ),
            Tab(
              text: "Bag",
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.indigo,
              ),
            )
          ],
        ),
      ],
    );
  }
}
