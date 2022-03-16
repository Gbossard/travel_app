///
/// screen/account.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/account/profil_account.dart';
import 'package:travel_app/widget/home/header_home.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          headerHome(context, false),
          profilAccount()
        ],
      ),
    );
  }
}
