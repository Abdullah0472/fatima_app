import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              width:100,
              color: Colors.red,
            ),
            Positioned(
              top: -15,
              left: -15,
              child: Container(
                height: 70,
                width:80,
                child: Image.asset("Assets/Images/pdoductcategories1.png",fit:BoxFit.cover),
                color: Colors.green,
                ),
            ),

          ],
        ),
      ),
    ));
  }
}
