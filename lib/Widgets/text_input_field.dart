import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final String hinttext;
  final String label;
  final bool obscure;
  final bool islogin;
  final bool ispassword;
  final bool isname;
  final bool iscardnumber;
  final bool issecuritycode;
  final bool iszipcode;
  final bool isnickname;
  final double height;
  final double width;
  final String Function(String?)? Validator;
  final TextEditingController mycontroller;
  const TextInputField({Key? key,
    this.hinttext='',
    required this.label,
    this.obscure=false,
    this.ispassword=false,
    this.islogin=false,
    this.isname=false,
    this.iscardnumber=false,
    this.issecuritycode=false,
    this.iszipcode=false,
    this.isnickname=false,
    this.Validator,
    this.height=39.33,
    this.width=363.03,
   required this.mycontroller,
  }) : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
              blurRadius: 10)
        ]
      ),
      child: Center(
        child: TextFormField(
          obscureText: widget.obscure,
          validator: (String? input){
            RegExp regex = RegExp(pattern);
            // if(input==null||input.isEmpty){
            //   return "Please Enter Some Text";
            // }
            if(widget.isname){
              if(input == null || input.isEmpty){
                return "Name is required";
              }else if((!RegExp(r'^[a-z A-Z]+$').hasMatch(input))){
                return 'Please Enter only Alphabets ';
              }
            }
            if(widget.isnickname){
              if(input == null || input.isEmpty){
                return "Nick name is required";
              }else if((!RegExp(r'^[a-z A-Z]+$').hasMatch(input))){
                return 'Please Enter only Alphabets ';
              }
            }
            if(widget.iscardnumber){
              if(input == null || input.isEmpty){
                return "Card Number is required";
              }else if(input.isEmpty && !RegExp(r'^[0-9 ]+$').hasMatch(input)){
                return 'Enter only digit ';
              }else if(input.length <= 14){
                return 'Your Card Number Should be of 14 Chracters ';
              }
            }
            if(widget.issecuritycode){
              if(input == null || input.isEmpty){
                return "Security code  is required";
              }else if(input.isEmpty && !RegExp(r'^[0-9 ]+$').hasMatch(input)){
                return 'Enter only digit ';
              }else if(input.length <= 3){
                return 'Your Code Should be of 3 digits only';
              }
            }
            if(widget.iszipcode){
              if(input == null || input.isEmpty){
                return "Zip/Postal code  is required";
              }else if(input.isEmpty && !RegExp(r'^[0-9 ]+$').hasMatch(input)){
                return 'Enter only digit ';
              }else if(input.length <= 5){
                return 'Your Zip code Should be of 5 digits only';
              }
            }
            if(widget.islogin){
              var nonNullValue=input??'';
              if(nonNullValue.isEmpty||input==null){
                return ("username is required");
              }
             else if(!input.contains('@gmail')){
                return 'username should contain @gmail';
              }
              else if(!regex.hasMatch(input)){
                return 'Enter a valid email address';
              }
            }
            else if(widget.ispassword){
              RegExp regex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
              var passNonNullValue=input??"";
              if(passNonNullValue.isEmpty||input==null){
                return ("Password is required");
              }
              else if(passNonNullValue.length<8){
                return ("Password Must be more than 8 characters");
              }
              else if(!regex.hasMatch(passNonNullValue)){
                return ("Password should contain upper,lower,digit and Special character ");
              }
            }
            return null;
          },
          decoration: InputDecoration(
              hintText: widget.hinttext,
              fillColor: Colors.white,
              filled: true,
              label: Text(
                widget.label,
                // style: TextStyle(fontSize: 17, color: Color(0xff5D5D5D)),
                style: TextStyle(fontSize: 17, color: Colors.grey.shade400),
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
      ),
    );
  }
}
