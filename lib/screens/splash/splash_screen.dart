import 'package:flutter/material.dart';
import '/core/sizes.dart';

import '../splash/components/body.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Sizes().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
