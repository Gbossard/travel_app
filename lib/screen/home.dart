///
/// screen/home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/home/header_home.dart';
import 'package:travel_app/widget/home/list_destination_home.dart';
import 'package:travel_app/widget/home/tab_bar_home.dart';
import 'package:travel_app/widget/home/title_home.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          headerHome(context, true),
          titleHome(),
          tabBarHome(),
          listDestination()
        ],
      ),
    );
  }
}