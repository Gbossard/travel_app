///
/// screen/menu.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/drawer_items.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/screen/home.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/drawer/navigation_drawer.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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

  _onSelectItem(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOpts = [];
    for (var i = 0; i < _drawerItems.length; i++) {
      var d = _drawerItems[i];
      var isSelected = i == _selectedIndex;
      var color = isSelected ? pacificBlue : middleBlue;
      drawerOpts.add(new ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        leading: new Icon(
          d.icon,
          color: color,
          size: 25,
        ),
        title: new Text(
          d.title,
          style:
          TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: color),
        ),
        selected: isSelected,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
      drawer: NavigationDrawer(children: drawerOpts),
      body: _getDrawerItemWidget(_selectedIndex),
    );
  }

}