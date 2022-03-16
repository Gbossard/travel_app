///
/// widget/home/list_destination_home.dart
///
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/model/airtable_data_destination.dart';
import 'package:travel_app/widget/imageStack.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget listDestination() {
  final _pageController = PageController(viewportFraction: 0.877);
  final AirtableData airtableData = AirtableData();

  return Column(
    // children: <Widget>[
    //   Container(
    //       margin: EdgeInsets.only(top: 16),
    //       child: Container(
    //           height: 220,
    //           child: FutureBuilder(
    //             future: airtableData.getDestination(),
    //             builder: (BuildContext context,
    //                 AsyncSnapshot<List<AirtableDataDestination>> snapshot) {
    //               if (snapshot.hasData) {
    //                 List<AirtableDataDestination>? values = snapshot.data;
    //                 return ListView(
    //                   controller: _pageController,
    //                   physics: BouncingScrollPhysics(),
    //                   scrollDirection: Axis.horizontal,
    //                   children: values!
    //                       .map(
    //                         (AirtableDataDestination value) => ListTile(
    //                             title: imageStack(value.cover, value.name)),
    //                       )
    //                       .toList(),
    //                 );
    //               } else {
    //                 return Center(child: CircularProgressIndicator());
    //               }
    //             },
    //           )
    //       )
    //   ),
      // Padding(
      //   padding: EdgeInsets.only(left: 30, top: 30),
      //   child: SmoothPageIndicator(
      //     controller: _pageController,
      //     count: value.,
      //     effect: ExpandingDotsEffect(
      //       activeDotColor: Color(0xFF8a8a8a),
      //       dotColor: Color(0xFFababab),
      //       dotHeight: 4.8,
      //       dotWidth: 6,
      //       spacing: 4.8),
      //   ),
      // )
    // ],
  );
}
