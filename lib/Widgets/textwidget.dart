import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(this.text,style: TextStyle(fontSize: 17,color: Color(0xffA5A5A5)),),
    );
  }
}
