import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';
import '../Widgets/categories_builder.dart';

class ProductCategories2Screen extends StatefulWidget {
  const ProductCategories2Screen({Key? key}) : super(key: key);

  @override
  State<ProductCategories2Screen> createState() => _ProductCategories2ScreenState();
}

class _ProductCategories2ScreenState extends State<ProductCategories2Screen> {
  List<CategoriesModels> productcategories2list=[
    CategoriesModels(imagepath: "Assets/Images/productcategories4.png", tittle: "Nail Paint", items: "100 Items"),
    CategoriesModels(imagepath: "Assets/Images/flower bookey.png", tittle: "Flower", items: "50 Items"),
    CategoriesModels(imagepath: "Assets/Images/product_categories1.png", tittle: "Gifts Packages", items: "125 Items"),
    CategoriesModels(imagepath: "Assets/Images/productcategories4.png", tittle: "Nail Paint", items: "100 Items"),
    CategoriesModels(imagepath: "Assets/Images/flower bookey.png", tittle: "Flower", items: "50 Items"),
    CategoriesModels(imagepath: "Assets/Images/product_categories1.png", tittle: "Gifts Packages", items: "125 Items"),
    CategoriesModels(imagepath: "Assets/Images/productcategories4.png", tittle: "Nail Paint", items: "100 Items"),
    CategoriesModels(imagepath: "Assets/Images/flower bookey.png", tittle: "Flower", items: "50 Items"),
    CategoriesModels(imagepath: "Assets/Images/product_categories1.png", tittle: "Gifts Packages", items: "125 Items"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        title: RichText(
            text: const TextSpan(
                text: "product Ca",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5D5D5D)),
              children: [
                TextSpan(text: "tegories",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ]
            ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: ListView.builder(
              itemCount: productcategories2list.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, int index) {
                CategoriesModels productcategoriesdetails=productcategories2list[index];
                return CategoriesBuilder(detail:productcategoriesdetails );
              }),
        ),
      ),
    ));
  }
}
