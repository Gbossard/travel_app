///
/// screen/home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/drawer_navigation.dart';

class AccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerNavigationWidget(),
      appBar: AppBar(
        title: Center(
          child: Text("Account"),
        ),
      ),
    );
  }
}