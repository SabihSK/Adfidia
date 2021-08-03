import 'dart:async';

import 'package:adfidia/screens/onBoard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String route = "/";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, OnboardingScreen.route));

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Background.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: width * 0.5,
                    ),
                    SizedBox(
                      height: width * 0.1,
                    ),
                    Text(
                      "A D F I D I A",
                      style: TextStyle(
                          fontSize: width * 0.09, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
