import 'package:flutter/material.dart';
import 'package:netflixclone/screen/home_screen.dart';
import 'package:netflixclone/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    // Material 앱 설정
    return MaterialApp(title: 'Soplix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(child: Center(child: Text('search'),),),
                Container(child: Center(child: Text('saved'),),),
                Container(child: Center(child: Text('more'),),),
              ],
            ),
            bottomNavigationBar: BottomBar(), // navigation bar
        ),
      ),
    );
  }
}