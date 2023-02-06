import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';

class CategoriesBuilder extends StatefulWidget {
  final CategoriesModels detail;

  const CategoriesBuilder({Key? key,required this.detail}) : super(key: key);

  @override
  State<CategoriesBuilder> createState() => _CategoriesBuilderState();
}

class _CategoriesBuilderState extends State<CategoriesBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0,left: 8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              height:94,
              width: 361,
             decoration: BoxDecoration(
                 color: Colors.white,
               boxShadow: [BoxShadow(blurRadius: 6,spreadRadius:3,color: Colors.grey.shade200)]
             ),
            ),
          ),
          Positioned(
            top: -20,
              left: 10,
              bottom: 5,
              child:Container(
                height:104 ,
                width:100 ,
                  child: Image.asset(widget.detail.imagepath,fit: BoxFit.cover,),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
              )
          ),
          Positioned(
            top:15,
            left: 130,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.detail.tittle,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Color(0xff5D5D5D)),),
              SizedBox(height: 10,),
              Text(widget.detail.items,style: TextStyle(fontSize: 14,color: Colors.grey ),),
            ],
          )),
          Positioned(
            top: 31,
              left: 325,
              child: Icon(Icons.navigate_next,size: 32,color:Colors.grey.shade600),),
        ],
      ),
    );
  }
}
