import 'package:flutter/material.dart';
class Bestsellers extends StatefulWidget {
  const Bestsellers({Key? key}) : super(key: key);

  @override
  State<Bestsellers> createState() => _BestsellersState();
}

class _BestsellersState extends State<Bestsellers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 107,
      width: 370,
      child: Center(
        child: Image.asset("Assets/Images/spring best sellers.JPG",fit: BoxFit.cover),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))
      ),
    );
  }
}
