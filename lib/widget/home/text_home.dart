///
/// widget/home/text_home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

Widget textHome() {
  return Padding(
    padding: EdgeInsets.only(top: 30, left: 15),
    child: Container(
      child: Text(
          "Bienvenue sur l'application Liberty Travel. Une application qui vous permettra de dévouvrir vos futures vacances.",
          softWrap: true,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 20,
            color: grey,
          ),
      )
    ),
  );
}
