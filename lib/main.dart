import 'package:flutter/material.dart';
import 'package:travel_app/screen/home.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liberty Travel',
 
      routes: {
        '/': (context) => HomeScreen(),

      },
    );
  }
}