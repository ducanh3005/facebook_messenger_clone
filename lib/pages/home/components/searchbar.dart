import 'package:flutter/material.dart';

Widget searchBar() {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.black12,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          filled: true,
          hintText: "Search",
        ),
      ),
    ),
  );
}
