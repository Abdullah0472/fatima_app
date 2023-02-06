import 'package:fatima_app/Model/fatima_app_models.dart';
import 'package:flutter/material.dart';

class servicesCategoriesBuilder extends StatefulWidget {
  final ServicesCategoriesModels detail;
  const servicesCategoriesBuilder({Key? key,required this.detail}) : super(key: key);

  @override
  State<servicesCategoriesBuilder> createState() => _servicesCategoriesBuilderState();
}

class _servicesCategoriesBuilderState extends State<servicesCategoriesBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 104,
              width: 100,
              child: Image.asset(widget.detail.imagepath,fit: BoxFit.cover,),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(6))
              ),
            ),
            Text(widget.detail.tittle,style: TextStyle(fontSize: 15),),
            Text(widget.detail.price,style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
          ],
      ),
    );
  }
}
