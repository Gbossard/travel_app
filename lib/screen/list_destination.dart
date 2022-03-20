///
/// screen/list_destination.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/home/header_home.dart';
import 'package:travel_app/widget/list_destination/list_item.dart';

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
          headerHome(context, true),
          listItem(context)
        ],
      ),
    );
  }
}
