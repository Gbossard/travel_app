///
/// screen/mainPage.dart
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/model/navItem.dart';
import 'package:travel_app/provider/navigationProvider.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/screen/home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.home:
        return HomeScreen();
      case NavigationItem.search:
        return AccountScreen();
      case NavigationItem.favorites:
        return HomeScreen();
      case NavigationItem.account:
        return AccountScreen();
      case NavigationItem.logout:
        break;
    }
    return Container();
  }
}