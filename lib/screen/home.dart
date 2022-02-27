///
/// screen/home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/drawerNavigation.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerNavigation(),
      appBar: AppBar(
        title: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}