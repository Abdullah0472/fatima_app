import 'package:fatima_app/Model/fatima_app_models.dart';
import 'package:fatima_app/Widgets/product_categories_builder.dart';
import 'package:flutter/material.dart';

class ProductCategories extends StatefulWidget {
  final List<ProductCategoriesModels> list;
  const ProductCategories({Key? key,required this.list}) : super(key: key);

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  // List<ProductCategoriesModels> productcategoriestlist=[
  //   ProductCategoriesModels(imagepath: "Assets/Images/product_categories1.png", tittle: "Flowers", price: "150 Items"),
  //   ProductCategoriesModels(imagepath: "Assets/Images/productcategories2.png", tittle: "Chocolates", price: "74 Items"),
  //   ProductCategoriesModels(imagepath: "Assets/Images/Product_categories3.png", tittle: "Gifts", price: "55 Items"),
  //   ProductCategoriesModels(imagepath: "Assets/Images/product_categories1.png", tittle: "Flowers", price: "500 Items"),
  //   ProductCategoriesModels(imagepath: "Assets/Images/productcategories2.png", tittle: "chocolates", price: "84 Items"),
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,int index){
            ProductCategoriesModels productcategorieslistdetails=widget.list[index];
            return ProductCategoriesBuilder(detail: productcategorieslistdetails);
          }),
    );
  }
}
