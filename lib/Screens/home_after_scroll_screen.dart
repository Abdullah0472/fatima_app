import 'package:fatima_app/Widgets/services_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/bestsellers.dart';
import '../Widgets/new_product.dart';

class HomeAfterScroollScreen extends StatefulWidget {
  const HomeAfterScroollScreen({Key? key}) : super(key: key);

  @override
  State<HomeAfterScroollScreen> createState() => _HomeAfterScroollScreenState();
}

class _HomeAfterScroollScreenState extends State<HomeAfterScroollScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 119,
                width: MediaQuery.of(context).size.width,
                child: ListTile(leading: IconButton(onPressed: (){},icon:Icon(Icons.menu),),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.shopping_bag_outlined),)
                  ),
                decoration: BoxDecoration(
                  color:Color(0xff9F041B),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(blurRadius: 8)
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75,left: 25,right: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                      filled: true,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search,color:Color(0xffE3E3E3)),
                      label: Text(
                        "Search",
                        style: TextStyle(fontSize: 17, color: Color(0xffE3E3E3)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(color: Color(0xffE6E6E6)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(color: Color(0xffE6E6E6)),
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                  children: [
                    RichText(text: TextSpan(
                        text: "Service Ca",
                        style: TextStyle(fontSize: 17,color: Color(0xff5D5D5D),fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text:("tegories"),
                            style: TextStyle(fontSize: 17,color: Color(0xff000000),fontWeight: FontWeight.bold)
                          )
                        ]
                    )),
                    Expanded(child: Center()),
                    InkWell(onTap: (){},
                        child: Text("View all ",style: TextStyle(fontSize: 15,color: Colors.grey.shade600,))),
                  ],
                ),
          ),
          ServicesCategories(),
          Padding(padding: EdgeInsets.all(12.0),
            child: Text("Bestsellers",style: TextStyle(fontSize: 17,color: Color(0xff5D5D5D),fontWeight: FontWeight.bold),),
          ),
          Bestsellers(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text("New Product",style: TextStyle(fontSize: 17,color: Color(0xff5D5D5D),fontWeight: FontWeight.bold)),
                Expanded(child: Center()),
                InkWell(onTap: (){},
                    child: Text("View all ",style: TextStyle(fontSize: 15,color: Colors.grey.shade600,))),
              ],
            ),
          ),
          NewProduct(),
        ],
      ),
    ),
    ));
  }
}
