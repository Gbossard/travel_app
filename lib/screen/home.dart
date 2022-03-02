///
/// screen/home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/drawerNavigation.dart';
import 'package:travel_app/widget/home/headerHome.dart';
import 'package:travel_app/widget/home/titleHome.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}