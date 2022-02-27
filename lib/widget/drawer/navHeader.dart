///
/// widget/drawer/navHeader.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class navHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Image.asset('assets/logo.png'),
          Text("Liberty", style: titleNavigationFirst),
          Text("Travel", style: titleNavigationSecond)
        ],
      ),
    );
  }
}