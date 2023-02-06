import 'package:fatima_app/Model/fatima_app_models.dart';
import 'package:flutter/material.dart';

class ProductCategoriesBuilder extends StatefulWidget {
  final ProductCategoriesModels detail;
  const ProductCategoriesBuilder({Key? key,required this.detail}) : super(key: key);

  @override
  State<ProductCategoriesBuilder> createState() => _ProductCategoriesBuilderState();
}

class _ProductCategoriesBuilderState extends State<ProductCategoriesBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 102,
            width: 100,
            child: Image.asset(widget.detail.imagepath,fit: BoxFit.cover,),
            decoration: BoxDecoration(
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
