///
/// widget/drawer/buildNavItem.dart
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/model/navItem.dart';
import 'package:travel_app/provider/navigationProvider.dart';
import 'package:travel_app/theme.dart';

Widget buildNavItem(
  BuildContext context, {
  required NavigationItem item,
  required String title,
  required IconData icon
}) {
  final provider = Provider.of<NavigationProvider>(context);
  final currentItem = provider.navigationItem;
  final isSelected = item == currentItem;

  final color = isSelected ? pacificBlue : middleBlue;

  return Material(
    color: Colors.transparent,
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      selected: isSelected,
      selectedTileColor: greyLight,
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color, fontFamily: 'Montserrat', fontSize: 16)),
      onTap: () => selectItem(context, item),
    ),
  ); 
}

void selectItem(BuildContext context, NavigationItem item) {
  final provider = Provider.of<NavigationProvider>(context, listen: false);
  provider.setNavigationItem(item);
}