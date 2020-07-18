import 'package:flutter/material.dart';

class Slide{

  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/MaskGirl.png',
    title: 'Wear A Mask',
    description: 'Cover your mouth and nose when around others'
  ),

  Slide(
      imageUrl: 'assets/images/HandWash.png',
      title: 'Wash Your Hands',
      description: 'Wash your hands for at least 20 seconds'
  ),

  Slide(
      imageUrl: 'assets/images/Social Distancing.png',
      title: 'Social Distance',
      description: 'Keep your 6-ft distance from everyone at all times'
  ),
];

