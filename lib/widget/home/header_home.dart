///
/// widget/home/header_home.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/theme.dart';

Widget headerHome(BuildContext context) {
  return Container(
    height: 50,
    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: greyLight,
          ),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.clear_all, color: pacificBlue),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        Container(
          child: IconButton(
            icon: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
                maxRadius: 50,
                backgroundColor: Colors.teal,
              ),
            ),
            onPressed: () { 
              Navigator.of(context).pop(AccountScreen());
            }
          ),
        ),
      ],
    ),
  );
}
