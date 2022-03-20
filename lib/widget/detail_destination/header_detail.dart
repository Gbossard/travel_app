///
/// widget/detail_destination/slider_detail.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/airtable_data_destination.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/detail_destination/favorite_button_detail.dart';

Widget headerDetail(BuildContext context) {
  return SafeArea(
    child: Container(
      height: 50,
      margin: EdgeInsets.only(top: 15, left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: greyLight,
              ),
              child: Icon(Icons.chevron_left, color: pacificBlue),
            ),
          ),
          FavoriteButton()
        ],
      ),
    ),
  );
}
