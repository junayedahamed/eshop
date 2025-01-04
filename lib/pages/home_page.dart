import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:eshop/pages/cart_page.dart';
import 'package:eshop/pages/tabs/tab_bar.dart';
import 'package:eshop/pages/tabs/tab_bar_view.dart';
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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.indigo,
        title: const Text("Home page"),
      ),
      body: Column(
        children: [
          // Tabs
          MyTabBar(tabController: _tabController),

          // Flexible area for tab content
          MyTabBarView(
            tabController: _tabController,
          )
        ],
      ),
    );
  }
}
