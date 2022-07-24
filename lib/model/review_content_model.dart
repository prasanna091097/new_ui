import 'package:flutter/material.dart';
import 'review_model.dart';

const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);

const kFixPadding = 16.0;

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

final reviewList = [
  ReviewModal(
    image: "images/dhoni.jpeg",
    name: "Dhoni",
    rating: 3.5,
    comment:
        "There are not as many cons as there are limitations which the Flutter community is working on relentlessly",
  ),
  ReviewModal(
    image: "images/dhoni3.jpeg",
    name: "Dhoni",
    rating: 2.5,
    comment:
        "When you choose Flutter, you get to develop your application faster than the standard native application.",
  ),
  ReviewModal(
    image: "images/dhoni2.jpeg",
    name: "Dhoni",
    rating: 4.5,
    comment:
        "In a highly competitive environment of the current digital landscape, getting to the market faster could be the one thing that sets you above the competition.",
  ),
  ReviewModal(
    image: "images/dhoni.jpeg",
    name: "Dhoni",
    rating: 2.5,
    comment:
        "In a highly competitive environment of the current digital landscape,",
  ),
  ReviewModal(
    image: "images/dhoni3.jpeg",
    name: "Dhoni",
    rating: 2.0,
    comment:
        "In a highly competitive environment of the current digital landscape,",
  ),
];
