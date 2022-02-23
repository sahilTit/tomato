import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tomato/home/food_page_body.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget{
  const MainFoodPage({Key? key}) :super (key: key);
  @override
   _HomeFoodPageState  createState()=> _HomeFoodPageState(); 
}

class _HomeFoodPageState extends State< MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45,bottom: 15),
              padding: EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    BigText(text: "India",color: Color(0xFF89dad0),),
                    Row(
                      children: [
                        SmallText(text: "Nagpur",color: Colors.black54,),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],),
                  Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.search,
                      color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF89dad0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
         FoodPageBody(),
        ],
      ),
    );
  }
}