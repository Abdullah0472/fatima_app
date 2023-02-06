import 'package:fatima_app/Widgets/new_product_builder.dart';
import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';

class NewProduct extends StatefulWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  State<NewProduct> createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {
  List<NewProductsModels> newproductlist=[
    NewProductsModels(imagepath: "Assets/Images/pdoductcategories1.png", firsttittle: "Creative Art",secondtittle: "Frame", text: "Duis rhoncus dui venenatis consequat \n porttitor. Etiam aliquet congue", price: "AED 150"),
    NewProductsModels(imagepath: "Assets/Images/pdoductcategories1.png", firsttittle: "Creative Art",secondtittle: "Frame", text: "Duis rhoncus dui venenatis consequat \n porttitor. Etiam aliquet congue", price: "AED 500"),
    NewProductsModels(imagepath: "Assets/Images/pdoductcategories1.png", firsttittle: "Creative Art",secondtittle: "Frame", text: "Duis rhoncus dui venenatis consequat \n porttitor. Etiam aliquet congue", price: "AED 1000"),
    NewProductsModels(imagepath: "Assets/Images/pdoductcategories1.png", firsttittle: "Creative Art",secondtittle: "Frame", text: "Duis rhoncus dui venenatis consequat \n porttitor. Etiam aliquet congue", price: "AED 50")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: newproductlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,int index){
            NewProductsModels newproductslistdetail=newproductlist[index];
            return NewProductBuilder(detail: newproductslistdetail,);
          }),
    );
  }
}
