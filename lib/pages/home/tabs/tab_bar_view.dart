import 'package:eshop/products/bag/bags.dart';
import 'package:eshop/products/shoes/shoes.dart';
import 'package:eshop/products/wallet/wallet.dart';
import 'package:flutter/material.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          // product view
          WalletProduct(),
          //Shoes product view
          ProDuctShoes(),
          //BAgs product view
          ProductBags(),
        ],
      ),
    );
  }
}
