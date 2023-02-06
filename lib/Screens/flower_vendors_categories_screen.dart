import 'package:flutter/material.dart';

import '../Model/fatima_app_models.dart';
import '../Widgets/categories_builder.dart';

class FlowerVendorsCategoriesScreen extends StatefulWidget {
  const FlowerVendorsCategoriesScreen({Key? key}) : super(key: key);

  @override
  State<FlowerVendorsCategoriesScreen> createState() => _FlowerVendorsCategoriesScreenState();
}

class _FlowerVendorsCategoriesScreenState extends State<FlowerVendorsCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    List<CategoriesModels> flowervendorscategorieslist=[
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (3).png", tittle: "Flower Aura", items: "674 UAE Street,sulman Avenue"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (2).png", tittle: "Ny Flowers", items: "50 Akunding Ridge"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (1).png", tittle: "National Flowers", items: "2424 Santima Rapid"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (4).png", tittle: "Event Flowers", items: "674 Sammie Corner"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (3).png", tittle: "Flower Aura", items: "674 UAE Street,sulman Avenue"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (2).png", tittle: "Ny Flowers", items: "50 Akunding Ridge"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (1).png", tittle: "National Flowers", items: "2424 Santima Rapid"),
      CategoriesModels(imagepath: "Assets/Images/flowervendor1 (4).png", tittle: "Event Flowers", items: "674 Sammie Corner"),
    ];
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 2,
            backgroundColor: Colors.white,
            title: RichText(
              text: TextSpan(
                  text: "Flower Ven",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5D5D5D)),
                  children: [
                    TextSpan(text: "dors",
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
                  itemCount: flowervendorscategorieslist.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, int index) {
                    CategoriesModels servicescategoriesdetails=flowervendorscategorieslist[index];
                    return CategoriesBuilder(detail:servicescategoriesdetails );
                  }),
            ),
          ),
        ));
  }
}
