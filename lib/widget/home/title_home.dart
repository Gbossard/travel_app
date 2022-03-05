///
/// widget/home/title_home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

Widget titleHome() {
  return Padding(
    padding: EdgeInsets.only(top: 50, left: 15),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Go to ', style: titleHomeGrey), 
            Text('Liberty,',style: titleHomeBlue)
          ],
        ),
        Row(
          children: [
            Text('Go ', style: titleHomeGrey),
            Text('Travel', style: titleHomeBlue)
          ],
        )
      ],
    ),
  );
}
