import 'package:fatima_app/Screens/forgot_passwords_screen.dart';
import 'package:fatima_app/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  GlobalKey<FormState> _formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                "Login",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5D5D5D)),
              ),
              TextInputField(
                mycontroller: _emailcontroller,
                hinttext: 'Email',
                label: 'Email...',
                islogin: true,
              ),
              TextInputField(
                mycontroller: _passwordcontroller,
                hinttext: 'Password',
                label: 'Password...',
                obscure: true,
                ispassword: true,
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswords()));
                },
                  child: Text("Forgot your password?",style: TextStyle(fontSize: 17,color:Color(0xff5D5D5D)),),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: InkWell(
                  onTap: (){
                    final snackBar = SnackBar(
                      content: const Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    if(_formkey.currentState!.validate()){
                      print("LoggedIn");
                    };
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 81,
                    width: 81,
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
              ),
              Center(child: Text("Login with social",style: TextStyle(fontSize: 15,color: Color(0xff5D5D5D)),),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 63,
                    width: 92,
                    child: Center(
                      child: Image.asset("Assets/Icons/Gmail.png",),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                  Container(
                    height: 63,
                    width: 92,
                    child: Center(
                      child: Image.asset("Assets/Icons/Facebook.png",height: 62,width: 92,),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
