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

  return Container(
    padding: EdgeInsets.only(top: 35),
    child: FutureBuilder(
      future: airtableData.getDestination(),
      builder: (BuildContext context,
          AsyncSnapshot<List<AirtableDataDestination>> snapshot) {
        if (snapshot.hasData) {
          List<AirtableDataDestination>? values = snapshot.data;
          return Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                  child: ListView(
                    primary: false,
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: values!
                      .map(
                        (AirtableDataDestination value) => Container(
                          child: imageStack(value.cover, value.name)),
                      )
                      .toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only( top: 30),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: values.length,
                    effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xFF8a8a8a),
                        dotColor: Color(0xFFababab),
                        dotHeight: 4.8,
                        dotWidth: 6,
                        spacing: 4.8
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    ),
  );
}
