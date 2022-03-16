///
/// provider/navigation_provider.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/drawer_items.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/screen/home.dart';

class Navigation extends ChangeNotifier {
   final _drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("My Account", Icons.person),
  ];

  int _selectedIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen();
      case 1:
        return new AccountScreen();
      default:
        return new Text("Error While");
    }
  }

  // _onSelectItem(int index) {
  //   setState(() => _selectedIndex = index);
  //   Navigator.of(context).pop(); // close the drawer
  // }
}