class ReviewModal {
  String image;
  String name;
  double rating;
  String comment;

  ReviewModal(
      {required this.image,
      required this.name,
      required this.rating,
      required this.comment});

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = image;
    data['name'] = name;
    data['rating'] = rating;
    data['comment'] = comment;
    return data;
  }
}
