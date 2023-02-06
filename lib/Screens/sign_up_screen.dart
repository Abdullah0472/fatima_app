import 'package:fatima_app/Screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("Assets/Icons/close_icon.png"),
                color: Colors.black,
                size: 16,
              ),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5D5D5D)),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  label: Text(
                    "Email",
                    style: TextStyle(fontSize: 17, color: Color(0xff5D5D5D)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  )),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.password_outlined),
                  label: Text(
                    "Password",
                    style: TextStyle(fontSize: 17, color: Color(0xff5D5D5D)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  )),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Phone",
                  label: Text(
                    "Phone",
                    style: TextStyle(fontSize: 17, color: Color(0xff5D5D5D)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)),
                  )),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: 71,
                width: 71,
                child: Icon(
                  CupertinoIcons.arrow_right,
                  size: 28,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xffF7849B), Color(0xffFDAB83)])),
              ),
            ),
            Row(
              children: <Widget>[
                 Text("Alredy have an account?",style: TextStyle(fontSize: 17,color:Color(0xffff5D5D5D)),),
                TextButton(
                  child:  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 17,color: Color(0xff5D5D5D)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    ));
  }
}
