///
/// screen/home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/drawer_navigation.dart';
import 'package:travel_app/widget/home/header_home.dart';
import 'package:travel_app/widget/home/tab_bar_home.dart';
import 'package:travel_app/widget/home/title_home.dart';

import '../theme.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerNavigationWidget(),
      // appBar: AppBar(
      //   title: Center(
      //     child: Text("Home"),
      //   ),
      //   leading: Builder(
      //     builder: (context) => IconButton(
      //       icon: Icon(Icons.clear_all),
      //       onPressed: () => Scaffold.of(context).openDrawer(),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              headerHome(context),
              titleHome(),
              tabBarHome()
            ],
          ),
        ),
      ),
    );
  }
}