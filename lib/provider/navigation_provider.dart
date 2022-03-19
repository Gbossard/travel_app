///
/// provider/navigation_provider.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/drawer_items.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/screen/home.dart';

class NavigationProvider extends ChangeNotifier {
  int selectedIndex = 0;

  int get getSelectedIndex => selectedIndex;

  void setIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}