import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavIconWidget(
    String selected, String unselected, String iconTitle) {
  return BottomNavigationBarItem(
    activeIcon: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        child: SizedBox(height: 30, width: 30, child: Image.asset(selected))),
    icon: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        child: SizedBox(height: 30, width: 30, child: Image.asset(unselected))),
    label: iconTitle,
  );
}
