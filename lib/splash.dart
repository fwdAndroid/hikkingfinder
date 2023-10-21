import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hikkingfinder/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.black,
              child: Image.asset("assets/logo.png"),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Discover new adventures",
            style: TextStyle(color: Color(0xff5a5a5a)),
          )
        ],
      ),
    );
  }
}
