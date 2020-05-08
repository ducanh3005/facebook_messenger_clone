import 'package:facebookmessengerclone/pages/home/components/homebottombar.dart';
import 'package:facebookmessengerclone/pages/home/homescreen.dart';
import 'package:facebookmessengerclone/utility/apptheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: HomeScreen(),
      bottomNavigationBar: homeBottomBar(),
    );
  }
}
