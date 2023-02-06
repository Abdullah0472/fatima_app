import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswords extends StatefulWidget {
  const ForgotPasswords({Key? key}) : super(key: key);

  @override
  State<ForgotPasswords> createState() => _ForgotPasswordsState();
}

class _ForgotPasswordsState extends State<ForgotPasswords> {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5D5D5D)),
                ),
                SizedBox(height: 10,),
                Text(
                  "Please enter your email adress. You will receive a link to create a new password via email.",
                  maxLines: 5,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff5D5D5D),
                  ),
                ),
              ],
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
          ],
        ),
      ),
    ));
  }
}
