import 'dart:convert';

import 'package:facebookmessengerclone/models/chatlist.dart';
import 'package:facebookmessengerclone/models/storymodel.dart';
import 'package:facebookmessengerclone/models/userdetails.dart';
import 'package:flutter/material.dart';

Future<List> getChatListDataFromAssets(context) async {
  String data = await DefaultAssetBundle.of(context)
      .loadString("assets/data/chatsdata.json");
  var decode = json.decode(data) as List;
  return decode.map((chatData) => ChatListModel.fromJson(chatData)).toList();
}

UserDetailsModel myData = UserDetailsModel.setData(
    25, "Baljeet Singh", "assets/userpics/user_image_6.jpg");

List<StoryModel> storyList = [
  StoryModel.setData(1, "assets/storyimages/storyimage_1.jpg"),
  StoryModel.setData(2, "assets/storyimages/storyimage_2.jpg"),
  StoryModel.setData(3, "assets/storyimages/storyimage_3.jpg"),
  StoryModel.setData(4, "assets/storyimages/storyimage_4.jpg"),
  StoryModel.setData(5, "assets/storyimages/storyimage_5.jpg")
];
