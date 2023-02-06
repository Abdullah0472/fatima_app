import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';
import 'services_categories_builder.dart';
class ServicesCategories extends StatefulWidget {
  const ServicesCategories({Key? key}) : super(key: key);

  @override
  State<ServicesCategories> createState() => _ServicesCategoriesState();
}

class _ServicesCategoriesState extends State<ServicesCategories> {
  List<ServicesCategoriesModels> categoriestlist=[
    ServicesCategoriesModels(imagepath: "Assets/Images/servicecategories1.png", tittle: "Nail Paint", price: "1500 Items"),
    ServicesCategoriesModels(imagepath: "Assets/Images/servicecategories2.png", tittle: "Hinna", price: "742 Items"),
    ServicesCategoriesModels(imagepath: "Assets/Images/servicecategories3.png", tittle: "Makeup", price: "55 Items"),
    ServicesCategoriesModels(imagepath: "Assets/Images/servicecategories4.png", tittle: "Artis", price: "500 Items"),
    ServicesCategoriesModels(imagepath: "Assets/Images/servicecategories1.png", tittle: "", price: "84 Items")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: categoriestlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,int index){
            ServicesCategoriesModels productdetails=categoriestlist[index];
            return servicesCategoriesBuilder(detail: productdetails);
          }),
    );
  }
}
