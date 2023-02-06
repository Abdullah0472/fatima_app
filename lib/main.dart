import 'package:fatima_app/Screens/sign_up_screen.dart';
import 'package:fatima_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Test Screen/drawer_test_screen.dart';
import 'Screens/flower_vendors_categories_screen.dart';
import 'Screens/product_categories2_screen.dart';
import 'Screens/Test Screen/stack_image.dart';
import 'Screens/add_card_payment_screen.dart';
import 'Screens/forgot_passwords_screen.dart';
import 'Screens/home_after_scroll_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/service_categories2_screen.dart';
import 'Widgets/categories_builder.dart';
import 'api_examples/post_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: PostListScreen(),
     // home: FlowerVendorsCategoriesScreen(),
     // home: SplashScreen(),
      home: HomeScreen(),
    );
  }
}
