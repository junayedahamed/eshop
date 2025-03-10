import 'package:eshop/bottomnavigator/Drawer/Drawer_containers/drawer_containers.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  final List item = [
    "Offers",
    "Favourite",
    "My Orders",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        clipBehavior: Clip.antiAlias,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: DrawerHeader(
                curve: Curves.bounceInOut,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  // backgroundBlendMode: BlendMode.hardLight,
                ),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 30,
                          color: Colors.white,
                        ),
                        const Text(
                          "User name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Type of User: ......",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Purchase counter: 0",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Drawertile(
                    text: item[index],
                    trailing: "${index + 1}",
                    onpress: () {},
                  );
                },
                itemCount: item.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
