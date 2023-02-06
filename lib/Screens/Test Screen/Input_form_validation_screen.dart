import 'package:flutter/material.dart';

class _LoginScreenState extends StatefulWidget {
  const _LoginScreenState({Key? key}) : super(key: key);

  @override
  State<_LoginScreenState> createState() => _LoginScreenStateState();
}

class _LoginScreenStateState extends State<_LoginScreenState> {
  GlobalKey<FormState> _formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            TextFormField(
              validator: (input){
                if(input==null ||input.isEmpty){
                    return "Please type Your Email";
                }else if(!input.contains("gmail")){
                  return "please enter Valid email";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Type Your Email"
              ),
            ),
            TextFormField(
              obscureText: true,
              validator: (input){
                if(input==null ||input.isEmpty){
                  return "Please type Your Password";
                }else if(input.length<6){
                  return "please enter atlest 6 digit";
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: "Type Your Email"
              ),
            ),
            TextButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                print("LoggedIn");
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
