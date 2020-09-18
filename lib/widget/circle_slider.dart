import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_cheese.dart';

class CircleSlider extends StatelessWidget {
  final List<Cheese> cheese;
  CircleSlider({this.cheese});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('미리보기'),
          Container(
            height: 120,
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeCircleImages(context, cheese),
              ),
            ),
          )

        ]
      ),
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Cheese> cheese) {
  List<Widget> results = [];
  for (var i = 0; i < cheese.length; i++) {
    results.add(
      InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/' + cheese[i].image),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return results;
}