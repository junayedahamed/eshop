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
          // Replace CartPage with your list
          WalletProduct(),
          // ListView Example for Tab 2
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
          ),
          // ListView Example for Tab 3
          ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Product $index"),
              );
            },
          ),
        ],
      ),
    );
  }
}
