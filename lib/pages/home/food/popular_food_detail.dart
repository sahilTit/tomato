import 'package:flutter/material.dart';
import 'package:tomato/widgets/app_column.dart';
import 'package:tomato/widgets/app_icon.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/expendable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget{
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: 'Spicy Curry',),
                  SizedBox(height: 20,),
                  BigText(text: "introduce"),
                  SizedBox(height: 20,),
                  Expanded(child:
                   SingleChildScrollView(child: 
                    ExpandableTexWidgets(text: "Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.")),
                  )
                ],
              )
            )
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
        decoration: BoxDecoration(
          color: Color(0xFFf7f6f4),
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: Colors.black,),
                  SizedBox(width: 5,),
                  BigText(text: "0"),
                  SizedBox(width: 5),
                  Icon(Icons.add,color: Colors.black,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF89dad0)
              ),
            )
          ],
        ),
      ),
    );
  }
  
}