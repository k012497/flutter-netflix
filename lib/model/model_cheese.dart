class Cheese {
  final String category;
  final String name;
  final String image;
  final bool isLiked;

  Cheese.fromMap(Map<String, dynamic> map)
  : category = map['category'],
    name = map['name'],
    image = map['image'],
    isLiked = map['isLiked'];

  @override
  String toString() => "CHEESE<$category:$name>";
}
