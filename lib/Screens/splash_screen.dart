import 'dart:async';

import 'package:fatima_app/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Nextscreen();
  }

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage("Assets/Images/splash_screen_.png"),
                height: 181,
                width: 139,),
            )
          ],
        )
    ));
  }
  void Nextscreen() {
    Timer(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));}
    );
  }
}
