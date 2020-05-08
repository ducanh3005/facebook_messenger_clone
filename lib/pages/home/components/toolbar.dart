import 'package:facebookmessengerclone/data/data.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatefulWidget {
  @override
  _ToolbarState createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            myData.userPic,
          ),
        ),
      ),
      title: Text("Chats",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold)),
      actions: <Widget>[
        CircleAvatar(
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.white10,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          child: Icon(Icons.edit),
          backgroundColor: Colors.white10,
        )
      ],
    );
  }
}
