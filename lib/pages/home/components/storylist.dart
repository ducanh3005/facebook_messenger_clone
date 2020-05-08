import 'package:facebookmessengerclone/data/data.dart';
import 'package:facebookmessengerclone/models/storymodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget storyListView() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(left: 15, right: 15),
    child: ListView.builder(
        itemCount: storyList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return storyItemView(storyList[index]);
        }),
  );
}

Widget storyItemView(StoryModel storyList) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    width: 60,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(storyList.storyImage),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(
        color: Colors.blue,
        width: 4.0,
      ),
    ),
  );
}
