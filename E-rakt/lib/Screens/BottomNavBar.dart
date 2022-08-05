// import pages 
import 'Home.dart';
import 'Account.dart';
// import 'package:e_rakta/Screens/Ambulance.dart';
// import 'package:e_rakta/Screens/Hospital.dart';
// import 'package:e_rakta/Screens/Request.dart';

import 'Ngo.dart';
import 'Account.dart';
import 'Hospital.dart';
import 'Request.dart';
import 'Home.dart';

// imports 
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
// import 'package:humanitarian_icons/humanitarian_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  final screens = [
    Home(),
    Request(),
    Hospital(),
    Ngo(),
    Account(),
  ];

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30,),
          Icon(Icons.transfer_within_a_station,size: 30),
          Icon(Icons.medical_services, size: 30),
          Icon(Icons.supervised_user_circle, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(
            () {
              _page = index;
            },
          );
        },
        letIndexChange: (index) => true,
      ),
      body: screens[_page],
    );
  }
}
