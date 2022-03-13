///
/// widget/drawer/naviagtion_drawer.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/nav_header.dart';

class NavigationDrawer extends StatelessWidget {
  List<Widget>? children;

  NavigationDrawer({required this.children});

  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), bottomRight: Radius.circular(30))),
      child: new Padding(
        padding: padding,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 45),
            navHeader(),
            const SizedBox(height: 16),
            Column(children: children ?? [])
          ],
        ),
      ),
    );
  }
}
