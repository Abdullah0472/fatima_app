import 'package:fatima_app/Screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer_test_screen extends StatefulWidget {
   Drawer_test_screen({Key? key}) : super(key: key);

  @override
  State<Drawer_test_screen> createState() => _Drawer_test_screenState();
}

class _Drawer_test_screenState extends State<Drawer_test_screen> {
  final GlobalKey<ScaffoldState> _Scaffoldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _Scaffoldkey,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.draw),onPressed: (){
          if(_Scaffoldkey.currentState!=null){
            _Scaffoldkey.currentState!.openDrawer();
    }
        },),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /**DrawerHeader(
              margin: EdgeInsets.zero,
                child: Container(
                    color:Colors.teal,child: Text("I am header"))),**/
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text("Flutter Exd",style: TextStyle(fontWeight: FontWeight.bold),), accountEmail: Text("Excellence Delivered Pvt Ltd."),
            currentAccountPicture: Container(color: Colors.pink),
              otherAccountsPictures: [
                Container(color: Colors.red,),
                Container(color:Colors.deepOrangeAccent)
              ],
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomeScreen()));
              },
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              title: Text("Close"),
              leading: Icon(Icons.close),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.of(context).pop();

              },
            ),

          ],
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed:(){}, icon: Icon(Icons.close)),
              ],
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              title: Text("product"),
              leading: Icon(Icons.production_quantity_limits),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            ListTile(
              title: Text("Services"),
              leading: Icon(Icons.design_services),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),

          ],
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("Assets/Images/single creatory.png"),height:228.53,width:162.66,fit: BoxFit.cover),
                    Text("Felicity Expressions",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("AED 420",style: TextStyle(fontSize: 15,color: Color(0xff5D5D5D))),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey.withOpacity(0.1),
            child: Column(
              children: [
                Image(image: AssetImage("Assets/Images/singlecreatory2.png"),height:228.53,width:162.66,fit: BoxFit.cover),
                Text("Felicity Expressions",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("AED 420",style: TextStyle(fontSize: 15,color: Color(0xff5D5D5D))),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(right: 0,child: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.heart),)),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("Assets/Images/single creatory.png"),height:228.53,width:162.66,fit: BoxFit.cover),
                    Text("Felicity Expressions",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("AED 420",style: TextStyle(fontSize: 15,color: Color(0xff5D5D5D))),
                  ],
                ),
              ),
            ],
          )

        ],
        
      ),
    );
  }
}
