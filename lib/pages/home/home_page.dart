import 'package:eshop/pages/home/tabs/tab_bar.dart';
import 'package:eshop/pages/home/tabs/tab_bar_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Tabs
          MyTabBar(tabController: _tabController),

          //tabBar view
          MyTabBarView(
            tabController: _tabController,
          )
        ],
      ),
    );
  }
}
