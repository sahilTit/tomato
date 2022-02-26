import 'package:flutter/material.dart';
import 'package:tomato/utils/dimensions.dart';
import 'package:tomato/widgets/app_column.dart';
import 'package:tomato/widgets/app_icon.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/icon_and_text_widget.dart';
import 'package:tomato/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget{
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food10.jpg")
                )
              ),
            )
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios,),
                AppIcon(icon: Icons.shopping_cart)
              ],
            )
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 320,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(right: 20,left: 20,top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child:  AppColumn()
            )
          )
        ],
      ),
    );
  }
  
}