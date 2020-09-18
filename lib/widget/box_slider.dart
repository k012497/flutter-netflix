import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_cheese.dart';

class BoxSlider extends StatelessWidget {
  final List<Cheese> cheese;
  BoxSlider({this.cheese});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('지금 뜨는 치즈'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, cheese),
            ),  
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Cheese> cheese) {
  List<Widget> results = [];
  for (var i = 0; i < cheese.length; i++) {
    results.add(InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('images/' + cheese[i].image),
        ),
      ),
    ));
  }
  return results;
}