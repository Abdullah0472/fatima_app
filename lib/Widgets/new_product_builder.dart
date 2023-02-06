import 'package:fatima_app/Model/fatima_app_models.dart';
import 'package:flutter/material.dart';
class NewProductBuilder extends StatefulWidget {
  final NewProductsModels detail;
  const NewProductBuilder({Key? key,required this.detail}) : super(key: key);

  @override
  State<NewProductBuilder> createState() => _NewProductBuilderState();
}

class _NewProductBuilderState extends State<NewProductBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 12),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 360,
            height: 109,
            color: Colors.white,
          ),
          Positioned(
              top: -15,
              left: 10,
              child: Container(
                  height: 111.4,
                  width: 107,
                  child: Image.asset(widget.detail.imagepath,
                      fit: BoxFit.cover))),
          Positioned(
              top: 10,
              left: 135,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: widget.detail.firsttittle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff5D5D5D),
                          ),
                          children: [
                            TextSpan(
                                text: " ${widget.detail.secondtittle}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xff000000))),
                          ])),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.detail.text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Color(0xff9B9B9B)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.detail.price,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
