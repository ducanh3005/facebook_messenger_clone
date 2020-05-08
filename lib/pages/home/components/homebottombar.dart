import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavBarItems = [
  BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("Chats")),
  BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("People"))
];

Widget homeBottomBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.transparent,
    items: bottomNavBarItems,
    currentIndex: 0,
    type: BottomNavigationBarType.fixed,
  );
}
