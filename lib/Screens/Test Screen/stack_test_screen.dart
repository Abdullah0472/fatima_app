import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class StackTestScreen extends StatefulWidget {
  const StackTestScreen({Key? key}) : super(key: key);

  @override
  State<StackTestScreen> createState() => _StackTestScreenState();
}

class _StackTestScreenState extends State<StackTestScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Blur(
               blur: 3,
              colorOpacity: 0.3,
              blurColor: Colors.black,
              child: Container(
                height: 200,
                width: size.width,
                child: Image.asset("Assets/Images/welcomeimage.png", fit: BoxFit.cover,)
              ),
            ),
            Positioned(
              left: 20,
              top: 60,
                child: SvgPicture.asset("Assets/Svg/whatsapp.svg",color: Colors.white,height: 80,width: 80,)),
          ],
        ),
      ),
    );
  }
}
