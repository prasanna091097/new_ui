import 'package:flutter/material.dart';

import 'package:ui_app/model/review_content_model.dart';
import 'package:ui_app/reusable_widgets/resuable.dart';
import 'package:ui_app/widgets/rivew_widget.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "Reviews", () {}),
      backgroundColor: kWhiteColor,
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 10.0, top: 8.0),
        itemCount: reviewList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
            child: Card(
              color: kAccentColor,
              child: ReviewUI(
                image: reviewList[index].image,
                name: reviewList[index].name,
                comment: reviewList[index].comment,
                rating: reviewList[index].rating,
                onPressed: () {},
                onTap: () {},
                isLess: true,
                key: Key(toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
