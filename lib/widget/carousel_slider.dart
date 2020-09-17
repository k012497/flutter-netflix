import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_cheese.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatefulWidget {
  final List <Cheese> cheese;
  CarouselImage({
    this.cheese
  }); // ???? 생성자
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State < CarouselImage > {
  List <Cheese> cheese;
  List <Widget> images;
  List <String> keywords;
  List <bool> likes;

  int _currentPage = 0;
  String _currentKeyword;

  @override
  void initState() {
    super.initState();
    cheese = widget.cheese; // 상위 클래스 StatefulWidget 에서 가져온 cheese 참조 
    images = cheese.map((c) => Image.asset('./images/' + c.image)).toList();
    keywords = cheese.map((c) => c.keyword).toList();
    likes = cheese.map((c) => c.isLiked).toList();
    _currentKeyword = keywords[0];

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: < Widget > [
          Container(
            padding: EdgeInsets.all(20)
          ),
          CarouselSlider(
            items: images,
            // options: CarouselOptions(
            //   onPageChanged: (index) {
            //     setState(() {
            //       _currentPage = index;
            //       _currentKeyword = keywords[_currentPage];
            //     });
            //   },
            // )
            
          ),
          Container(child: Text(_currentKeyword),)
        ]
      ),
    );
  }
}