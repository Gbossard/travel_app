///
/// screen/map_destination.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/widget/home/header_home.dart';
class MapDestinationScreen extends StatefulWidget {
  const MapDestinationScreen({ Key? key }) : super(key: key);

  @override
  State<MapDestinationScreen> createState() => _MapDestinationScreenState();
}

class _MapDestinationScreenState extends State<MapDestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          headerHome(context, true),
        ],
      ),
    );
  }
}