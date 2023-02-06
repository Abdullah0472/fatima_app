import 'package:flutter/material.dart';

import '../Widgets/cards_diff_type.dart';
import '../Widgets/textwidget.dart';
import '../Widgets/text_input_field.dart';

class AddCardPayment extends StatefulWidget {
  const AddCardPayment({Key? key}) : super(key: key);

  @override
  State<AddCardPayment> createState() => _AddCardPaymentState();
}

class _AddCardPaymentState extends State<AddCardPayment> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController cardnumbercontroller = TextEditingController();
  final TextEditingController expirydatecontroller = TextEditingController();
  final TextEditingController securitycodecontroller = TextEditingController();
  final TextEditingController zipcodecontroller = TextEditingController();
  final TextEditingController nicknamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formkey=GlobalKey();
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade50,
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                color: Color(0xff404040),
                iconSize: 22,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add Card",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Color(0xff5D5D5D))),
                    SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardsDiffType(imagepath: "Assets/Images/visacard4.png",height:32.26 ,width: 49.78),
                        CardsDiffType(imagepath: "Assets/Images/mastercard3.png",height:31.08 ,width: 51.81),
                        CardsDiffType(imagepath: "Assets/Images/americancard1.png",height:27.3 ,width: 39.59),
                        CardsDiffType(imagepath: "Assets/Images/discovercard2.png",height:25.95 ,width:57.56),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Center(
                      child: Container(
                        height: 39.33,
                        width: 190.11,
                        child: Center(
                          child: Text(
                            "Scan Credit card",
                            style:
                                TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xffF7849B),
                                  Color(0xffFDAB83),
                                ])),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextWidget(text: "Name on card"),
                    TextInputField(
                      label: "Name",
                      mycontroller: namecontroller,
                      isname: true,
                    ),
                    TextWidget(text: "Card Number"),
                    TextInputField(
                      label: "Card Number",
                      mycontroller: cardnumbercontroller,
                      iscardnumber: true,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(text: "Expiry date"),
                            TextInputField(
                              label: "Expiry date",
                              width: 170.22,
                              mycontroller: expirydatecontroller,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(text: "Security code"),
                            TextInputField(
                              label: "Security Code",
                              width: 170.22,
                              mycontroller: securitycodecontroller,
                              issecuritycode: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextWidget(text: "ZIP/Postal code"),
                    TextInputField(
                      label: "Zip/Postal code",
                      mycontroller: zipcodecontroller,
                      iszipcode: true,
                    ),
                    TextWidget(text: "Nick Name"),
                    TextInputField(
                      label: "choose nick name for the card",
                      mycontroller: nicknamecontroller,
                      isnickname: true,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                if(_formkey.currentState!.validate()){
                }
              },
              child: Container(
                height: 65,
                width: 395,
                child: Center(
                  child: Text(
                    "ADD CARD",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                      Color(0xffF7849B),
                      Color(0xffFDAB83),
                    ])),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
