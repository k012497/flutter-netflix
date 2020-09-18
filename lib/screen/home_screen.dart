import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_cheese.dart';
import 'package:netflixclone/widget/carousel_slider.dart';
import 'package:netflixclone/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State <HomeScreen> {
  List <Cheese> cheese = [
    Cheese.fromMap({
      'category': 'soft',
      'name': 'camenbert',
      'image': 'soft_camenbert.jpeg',
      'keyword': '프랑스',
      'isLiked': false
    }),
    Cheese.fromMap({
      'category': 'soft',
      'name': 'camenbert',
      'image': 'soft_camenbert.jpeg',
      'keyword': '프랑스',
      'isLiked': false
    }),
    Cheese.fromMap({
      'category': 'soft',
      'name': 'camenbert',
      'image': 'soft_camenbert.jpeg',
      'keyword': '프랑스',
      'isLiked': false
    }),
    Cheese.fromMap({
      'category': 'soft',
      'name': 'camenbert',
      'image': 'soft_camenbert.jpeg',
      'keyword': '프랑스',
      'isLiked': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: < Widget > [
      Stack(
        children: < Widget > [
          CarouselImage(cheese: cheese),
          TopBar(),
        ]
      ),
      CircleSlider(cheese: cheese),
    ]);
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Image.asset('images/cheese.png', fit: BoxFit.contain, height: 25),
          Container(child: Text('생치즈')),
          Container(child: Text('연성치즈'), ),
          Container(child: Text('반경성치즈'), ),
          Container(child: Text('경성치즈'), ),
        ],
      )
    );
  }
}