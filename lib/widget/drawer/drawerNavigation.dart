///
/// widget/drawer/drawerNavigation.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/navItem.dart';
import 'package:travel_app/screen/account.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/drawer/navHeader.dart';
import 'package:travel_app/widget/drawer/buildNavItem.dart';
import 'package:travel_app/screen/home.dart';

class drawerNavigationWidget extends StatefulWidget {

  @override
  _drawerNavigationWidgetState createState() => _drawerNavigationWidgetState();
}

class _drawerNavigationWidgetState extends State<drawerNavigationWidget> {
  static final List<String> _listTitleData = [
    "Flutter",
    "Ios",
    "Dart",
    "Android",
    "Laravel",
    "Php",
    "Html",
  ];

  int _currentSelected = 0;

  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Drawer(

          // OLD NAVIGATION 

          // child: Container(
          //   color: greyLighter,
          //   child: ListView(
          //     children: <Widget>[
          //       Container(
          //         padding: padding,
          //         child: Column(
          //           children: [
          //             const SizedBox(height: 45),
          //             navHeader(),
          //             const SizedBox(height: 16),
          //             buildNavItem(
          //               context,
          //               item: NavigationItem.home,
          //               title: 'Home',
          //               icon: Icons.home
          //             ),
          //             const SizedBox(height: 16),
          //             buildNavItem(
          //               context,
          //               item: NavigationItem.search,
          //               title: 'Search',
          //               icon: Icons.search,
          //             ),
          //             const SizedBox(height: 16),
          //             buildNavItem(
          //               context,
          //               item: NavigationItem.favorites,
          //               title: 'Favorites',
          //               icon: Icons.favorite,
          //             ),
          //             const SizedBox(height: 16),
          //             buildNavItem(
          //               context,
          //               item: NavigationItem.account,
          //               title: 'My Account',
          //               icon: Icons.person,
          //             ),
          //             Divider(color: middleBlue),
          //             const SizedBox(height: 16),
          //             buildNavItem(
          //               context,
          //               item: NavigationItem.logout,
          //               title: 'Logout',
          //               icon: Icons.logout,
          //             ),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),

          child: ListView(
            padding: padding,
            children: [
              const SizedBox(height: 45),
              navHeader(),
              const SizedBox(height: 16),
              ListView.builder(
                itemCount: _listTitleData.length,
                itemBuilder: (context, index) {
                return Container(
                  color: _currentSelected == index ? Colors.deepPurple : Colors.white,
                  child: ListTile(
                    title: Text(_listTitleData[index]),
                    onTap: () {
                      setState(() {
                        _currentSelected = index;
                      });
                    },
                  ),
                );
              },
              ),

              // OLD 
              
              // ListTile(
                
              //   title: const Text('Home', style: TextStyle(fontFamily: 'Montserrat', fontSize: 16)),
              //   onTap: () => Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => HomeScreen(),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 16),
              // ListTile(
              //   title: const Text('Item 2'),
              //   onTap: () {},
              // ),
              // const SizedBox(height: 16),
            ],
          ),
        ));
  }
}
