import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/food/main_food_page.dart';
import 'package:food_delivery/screens/food/popular_food_detail.dart';
import 'package:food_delivery/screens/food/recommended_food_detail.dart';
import 'package:food_delivery/utils/dimensions.dart';

void main() {
  runApp(demo());
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularFoodDetail(),
    );
  }
}
