import 'package:facebookmessengerclone/models/chatlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget chatListItem(ChatListModel chatListModel) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage:
                AssetImage(chatListModel.chatDetails.messageFromUserPic),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                chatListModel.chatDetails.messageFromUserName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    chatListModel.chatList[0].messageText,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  messageItem(chatListModel),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget messageItem(ChatListModel chatListModel) {
  var chatList = chatListModel.chatList;
  if (chatList != null && chatList.length > 0) {
    var latestChatData = chatList[0];
    return Text(
      latestChatData.messageTimeStamp,
      style: TextStyle(fontSize: 12, color: Colors.grey),
    );
  } else {
    return Text("");
  }
}

//String getDateTimeFromMilliseconds(int messageTimeStamp) {
//  var dateTime = DateTime.fromMicrosecondsSinceEpoch(messageTimeStamp);
//  return "${dateTime.day}/${dateTime.month}";
//}
