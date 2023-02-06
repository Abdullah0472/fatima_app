import 'package:fatima_app/Screens/login_screen.dart';
import 'package:fatima_app/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                RichText(
                  text: TextSpan(
                      text: "Welcome to",
                      style: TextStyle(fontSize: 20, color: Color(0xff5D5D5D)),
                      children: [
                        TextSpan(
                            text: " AYS",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5D5D5D)))
                      ]),
                ),
                SizedBox(height: 10,),
                Text(
                  "Explore Us",
                  style: TextStyle(fontSize: 18, color: Color(0xff5D5D5D)),
                ),
              ],
            ),
            Image(
              image: AssetImage("Assets/Images/welcomeimage.png"),
              height: 216.02,
              width: 393.38,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Container(
                height: 48,
                width: 245,
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xffFDAB83),
                        Color(0xffF7849B),
                      ],
                    )),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 16, color: Color(0xff454242)),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffB9B9B9),
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
