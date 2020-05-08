import 'package:flutter/cupertino.dart';

class ChatListModel {
  ChatDetails chatDetails;
  List<ChatListItem> chatList;

  ChatListModel({this.chatDetails, this.chatList});

  ChatListModel.fromJson(dynamic json) {
    chatDetails = json['chatDetails'] != null
        ? new ChatDetails.fromJson(json['chatDetails'])
        : null;
    if (json['chatList'] != null) {
      chatList = new List<ChatListItem>();
      var list = json['chatList'] as List;
      debugPrint("list: " + list.toString());
      chatList =
          list.map((chatData) => ChatListItem.fromJson(chatData)).toList();
    }
  }
}

class ChatDetails {
  String messageFromUserName;
  bool isRead;
  int messageFromUserId;
  String messageFromUserPic;

  ChatDetails(
      {this.messageFromUserName,
      this.isRead,
      this.messageFromUserId,
      this.messageFromUserPic});

  ChatDetails.fromJson(Map<String, dynamic> json) {
    messageFromUserName = json['messageFromUserName'];
    isRead = json['isRead'];
    messageFromUserId = json['messageFromUserId'];
    messageFromUserPic = json['messageFromUserPic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageFromUserName'] = this.messageFromUserName;
    data['isRead'] = this.isRead;
    data['messageFromUserId'] = this.messageFromUserId;
    data['messageFromUserPic'] = this.messageFromUserPic;
    return data;
  }
}

class ChatListItem {
  int messageId;
  String messageText;
  String messageTimeStamp;

  ChatListItem.fromJson(dynamic json) {
    messageId = json['messageId'];
    messageText = json['messageText'];
    messageTimeStamp = json['messageTimeStamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageId'] = this.messageId;
    data['messageText'] = this.messageText;
    data['messageTimeStamp'] = this.messageTimeStamp;
    return data;
  }
}
