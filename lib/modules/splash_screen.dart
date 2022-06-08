import 'dart:async';

import 'package:book_store/modules/onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => OnBoardingscreen()
            )
        )
    );}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFF4D03F),
        body: Center(
            child: Image.asset('assets/images/SplashImg.png',width: 141,height: 131.18,)
        )
          ),
    );
  }
}