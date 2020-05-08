import 'package:facebookmessengerclone/data/data.dart';
import 'package:facebookmessengerclone/models/chatlist.dart';
import 'package:facebookmessengerclone/pages/home/components/chatlistitem.dart';
import 'package:facebookmessengerclone/pages/home/components/searchbar.dart';
import 'package:facebookmessengerclone/pages/home/components/storylist.dart';
import 'package:facebookmessengerclone/pages/home/components/toolbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Toolbar(),
          searchBar(),
          SizedBox(height: 10,),
          storyListView(),
          Flexible(
            child: FutureBuilder(
              future: getChatListDataFromAssets(context),
              builder: (BuildContext context,
                  AsyncSnapshot<List<dynamic>> asyncData) {
                if (asyncData.hasData) {
                  List<ChatListModel> data = asyncData.data;
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return chatListItem(data[index]);
                      });
                } else {
                  return Text("Error");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
