///
/// screen/account.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/account/profil_account.dart';
import 'package:travel_app/widget/home/header_home.dart';

class ListDestinationScreen extends StatefulWidget {
  ListDestinationScreen({Key? key}) : super(key: key);

  @override
  State<ListDestinationScreen> createState() => _ListDestinationScreenState();
}

class _ListDestinationScreenState extends State<ListDestinationScreen> {
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
