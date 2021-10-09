import 'package:flutter/material.dart';
import '/core/constants.dart';
import '/core/sizes.dart';
import '/components/defaultButton.dart';

import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "title": "FluMall",
      "text": "Flumall'a Hoş Geldiniz, Hadi Alışveriş Yapalım!",
      "image": "assets/images/splash_1.png",
    },
    {
      "title": "FluMall",
      "text":
          "Türkiye'deki mağazamızla bağlantı kurmanıza \nyardımcı oluyoruz.",
      "image": "assets/images/splash_2.png",
    },
    {
      "title": "FluMall",
      "text": "Alışveriş yapmanın kolay yolu burada. \nBizimle evde kal",
      "image": "assets/images/splash_3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  title: splashData[index]["title"].toString(),
                  text: splashData[index]["text"].toString(),
                  image: splashData[index]["image"].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidthRatio(20.0),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Devam",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
