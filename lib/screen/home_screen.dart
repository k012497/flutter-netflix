import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TobBar()
    );
  }
}

class TobBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('images/cheese.png', fit: BoxFit.contain, height: 25),
          Container(child: Text('생치즈')),
          Container(child: Text('연성치즈'),),
          Container(child: Text('반경성치즈'),),
          Container(child: Text('경성치즈'),),
        ],
      )
    );
  }
}