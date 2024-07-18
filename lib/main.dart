import 'package:flutter/material.dart';
import 'package:shopping_app/basket_page.dart';
import 'package:shopping_app/filtters_page.dart';
import 'package:shopping_app/like2_page.dart';
import 'package:shopping_app/like_page.dart';
import 'package:shopping_app/linden_page.dart';
import 'package:shopping_app/product_page.dart';
import 'package:shopping_app/reviews_page.dart';
import 'package:shopping_app/sale_page.dart';
import 'package:shopping_app/shop3_page.dart';
import 'balance_page.dart';
import 'package:shopping_app/shop_page.dart';
import 'shop_login.dart';
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
      home:shopPage()
    );
  }
}
