///
/// widget/drawer/naviagtion_drawer.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/screen/home.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/drawer/nav_header.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class DrawerActivity extends StatefulWidget {
  final _drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("My Account", Icons.person),
  ];

  @override
  State<StatefulWidget> createState() {
    return new DrawerActivityState();
  }
}

class DrawerActivityState extends State<DrawerActivity> {
  int _selectedIndex = 0;

  final padding = EdgeInsets.symmetric(horizontal: 20);

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen(drawerItem: widget._drawerItems[_selectedIndex]);
      case 1:
        return new AccountScreen(drawerItem: widget._drawerItems[_selectedIndex]);
      
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
    for (var i = 0; i < widget._drawerItems.length; i++) {
      var d = widget._drawerItems[i];

      var isSelected = i == _selectedIndex;
      var color = isSelected ? pacificBlue : middleBlue;
      drawerOpts.add(new ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        leading: new Icon(d.icon, color: color, size: 25,),
        title: new Text(
          d.title, 
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: color),
        ),
        selected: isSelected,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
      drawer: new Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
        ),
        child: new Padding(
          padding: padding,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 45),
              navHeader(),
              const SizedBox(height: 16),
              Column(children: drawerOpts)
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedIndex),
    );
  }
}
  