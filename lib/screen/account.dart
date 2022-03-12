///
/// screen/account.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/drawer/navigation_drawer.dart';

class AccountScreen extends StatefulWidget {
  final DrawerItem drawerItem;

  AccountScreen({Key? key, required this.drawerItem}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Center(
          child: Text("Account"),
        ),
      ),
    );
  }
}