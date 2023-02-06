import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';
import '../Widgets/categories_builder.dart';

class ServicesCategories2Screens extends StatefulWidget {
  const ServicesCategories2Screens({Key? key}) : super(key: key);

  @override
  State<ServicesCategories2Screens> createState() => _ServicesCategories2ScreensState();
}

class _ServicesCategories2ScreensState extends State<ServicesCategories2Screens> {
  List<CategoriesModels> servicescategories2list=[
    CategoriesModels(imagepath: "Assets/Images/servicecategories3.png", tittle: "Nail Paint Art", items: "60 Items"),
    CategoriesModels(imagepath: "Assets/Images/servicecategories4.png", tittle: "Hina Art", items: "50 Items"),
    CategoriesModels(imagepath: "Assets/Images/servicecategories1.png", tittle: "Makeup Art", items: "205 Items"),
    CategoriesModels(imagepath: "Assets/Images/productcategories4.png", tittle: "Makeup kit Mo..", items: "120 Items"),

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
              text: TextSpan(
                  text: "Services Ca",
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
                icon: Icon(Icons.arrow_back, color: Colors.black)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: ListView.builder(
                  itemCount: servicescategories2list.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, int index) {
                    CategoriesModels servicescategoriesdetails=servicescategories2list[index];
                    return CategoriesBuilder(detail:servicescategoriesdetails );
                  }),
            ),
          ),
        ));
  }
}
