import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_cheese.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatefulWidget {
  final List<Cheese> cheese;
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
             options: CarouselOptions(
               onPageChanged: (index, reason) {
                 setState(() {
                   _currentPage = index;
                   _currentKeyword = keywords[_currentPage];
                 });
               },
             )
            
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(_currentKeyword, style: TextStyle(fontSize: 11),),
          ),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    likes[_currentPage]
                    ? IconButton(icon: Icon(Icons.check), onPressed: () {},)
                    : IconButton(icon: Icon(Icons.favorite), onPressed: () {},),
                    Text('아이 러빗', style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: FlatButton(
                  color: Colors.white, 
                  onPressed: () {}, 
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.kitchen, color: Colors.black,),
                      Padding(padding: EdgeInsets.all(3),),
                      Text('보기', style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.info),
                      onPressed: () {},
                    ),
                    Text(
                      '정보',
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ),
            ],
          ),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(likes, _currentPage),
            ),
          )
        ]
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == i
              ? Color.fromRGBO(255, 255, 255, 0.9)
              : Color.fromRGBO(255, 255, 255, 0.4)),
    ));
  }

  return results;
}