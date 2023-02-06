import 'package:flutter/material.dart';

class CardsDiffType extends StatelessWidget {
  final String imagepath;
  final double height;
  final double width;
  const CardsDiffType({Key? key,
    required this.imagepath,
    this.height=35,
    this.width=50
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:this.height,
      width: this.width,
      child: Image.asset(this.imagepath,fit: BoxFit.cover,)
    );
  }
}
