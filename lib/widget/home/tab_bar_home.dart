///
/// widget/home/tab_bar_home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/home/tab_custom_indicator.dart';

Widget tabBarHome() {
  return Container(
    height: 30,
    margin: EdgeInsets.only(top: 30, left: 5, bottom: 15),
    child: DefaultTabController(
      length: 4,
      child: TabBar(
        labelPadding: EdgeInsets.only(left: 10, right: 10),
        indicatorPadding: EdgeInsets.only(left: 15, right: 15),
        isScrollable: true,
        labelColor: pacificBlue,
        unselectedLabelColor: grey,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "raleway"
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "raleway"
        ),
        indicator: RoundedRectangleTabIndicator(color: pacificBlue, weight: 2.5, width: 15),
        tabs: [
          Tab(
            child: Container(
              child: Text('Recommanded'),
            ),
          ),
          Tab(
            child: Container(
              child: Text('Popular'),
            ),
          ),
          Tab(
            child: Container(
              child: Text('New Destination'),
            ),
          ),
          Tab(
            child: Container(
              child: Text('Hidden Gems'),
            ),
          ),
        ],
      ),
    ),
  );
}
