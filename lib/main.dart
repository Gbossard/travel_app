///
/// main.dart
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/Navigation_provider.dart';
import 'package:travel_app/screen/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Navigation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Liberty Travel',
        home: MenuScreen(),
      ),
    );
  }
}