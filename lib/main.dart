import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tomato/pages/home/food/recommended_food_detail.dart';
import 'package:tomato/pages/home/main_food_page.dart';
import 'pages/home/food/popular_food_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail()
    );
  }
}
