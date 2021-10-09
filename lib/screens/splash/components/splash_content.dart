import 'package:flutter/material.dart';
import '/core/sizes.dart';
import '/core/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.title,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: getScreenWidthRatio(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getScreenWidthRatio(16),
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getScreeenHeightRatio(265),
          width: getScreenWidthRatio(235),
        ),
      ],
    );
  }
}
