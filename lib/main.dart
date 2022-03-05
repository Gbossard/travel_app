///
/// main.dart
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/navigation_provider.dart';
import 'package:travel_app/screen/home.dart';
import 'package:travel_app/screen/main_page.dart';

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
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Liberty Travel',
        home: MainPage()
      )
    );
  }
}