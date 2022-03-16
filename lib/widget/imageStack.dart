///
/// widget/imageStack.dart
///
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

Widget imageStack(String urlImage, String titleImage) {
  return Container(
    margin: EdgeInsets.only(right: 60),
    width: 333,
    height: 210,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(urlImage),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 15,
          left: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
              child: Container(
                height: 36,
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.room, color: greyLight),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      titleImage, style: TextStyle(color: greyLight, fontFamily: 'montserrat', fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
