import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/pages/services.dart';

import '../main.dart';
import '../pages/beauty.dart';
import '../pages/clothes.dart';
import '../pages/device.dart';
import '../pages/food.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(251, 162, 162, 20),
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Image.asset('assets/HYDE_LOGO2.png')
          ),
          ListTile(
            title: const Text('Food'),
            onTap: () {
              Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
                return const Food(title: 'food');
              }));
            },
          ),
          InkWell(
            child: ListTile(
              title: const Text('Clothes'),
              onTap: () {
                Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
                  return const Clothes(title: 'clothes');
                }));
              },
            ),
          ),
          ListTile(
            title: const Text('Devices'),
            onTap: () {
              Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
                return const Devicecl(title: 'device');
              }));
            },
          ),
          ListTile(
            title: const Text('Beauty Products'),
            onTap: () {
              Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
                return const Beauty(title: 'beauty');
              }));
            },
          ),
          ListTile(
            title: const Text('Services'),
            onTap: () {
              Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
                return const Services(title: 'services');
              }));
            },
          ),
        ],
      ),
    );
  }
}