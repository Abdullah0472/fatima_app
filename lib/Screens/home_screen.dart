import 'package:badges/badges.dart';
import 'package:fatima_app/Model/fatima_app_models.dart';
import 'package:fatima_app/Widgets/product_categories.dart';
import 'package:fatima_app/Widgets/services_categories.dart';
import 'package:flutter/material.dart';

import '../Widgets/bestsellers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 275,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffF5515F), Color(0xff9F041B)]),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            120,
                          ),
                          bottomLeft: Radius.circular(120))),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    trailing: Row(
                      children: [
                        const Expanded(child: Center()),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag_outlined)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 21,
                  top: 12,
                  child: Badge(
                    badgeContent: const Text("2",
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF))),
                    shape: BadgeShape.circle,
                    animationType: BadgeAnimationType.fade,
                    badgeColor: const Color(0xffE91630),
                  ),
                ),
                Positioned(
                    bottom: -90,
                    left: 90,
                    child: Container(
                      height: 320,
                      width: 410,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        "Assets/Images/flower bookey.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    left: 30,
                    bottom: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Valentine Offer",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffFFFFFF)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "20% 0ff in \nour All products",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 22,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2)),
                            border: Border.all(
                                color: const Color(0xffFFFFFF),
                                strokeAlign: StrokeAlign.inside),
                          ),
                          child: const Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Product Ca",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff5D5D5D),
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: ("tegories"),
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold))
                      ])),
                  const Expanded(child: Center()),
                  InkWell(
                      onTap: () {},
                      child: Text("View all ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ))),
                ],
              ),
            ),
            ProductCategories(
              list: [
                ProductCategoriesModels(
                    imagepath: "Assets/Images/product_categories1.png",
                    tittle: "Flowers",
                    price: "150 Items"),
                ProductCategoriesModels(
                    imagepath: "Assets/Images/productcategories2.png",
                    tittle: "Chocolates",
                    price: "74 Items"),
                ProductCategoriesModels(
                    imagepath: "Assets/Images/Product_categories3.png",
                    tittle: "Gifts",
                    price: "55 Items"),
                ProductCategoriesModels(
                    imagepath: "Assets/Images/product_categories1.png",
                    tittle: "Flowers",
                    price: "500 Items"),
                ProductCategoriesModels(
                    imagepath: "Assets/Images/productcategories2.png",
                    tittle: "chocolates",
                    price: "84 Items"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Service Ca",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff5D5D5D),
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: ("tegories"),
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold))
                      ])),
                  const Expanded(child: Center()),
                  InkWell(
                      onTap: () {},
                      child: Text("View all ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ))),
                ],
              ),
            ),
            const ServicesCategories(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Bestsellers",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff5D5D5D),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Bestsellers(),
          ],
        ),
      ),
    ));
  }
}
