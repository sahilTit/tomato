import 'package:flutter/material.dart';
import 'package:tomato/widgets/app_icon.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/expendable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget{
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_rounded)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: Container(
                child: Center(child: BigText(text: "Indian Curry",size: 26,)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food10.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTexWidgets(text: 
                   "Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats.Although there is no Indian dish in the Indian subcontinent called curry, the British lumped all sauce-based dishes under the generic name 'Curry'. Curry was introduced to English cuisine starting with Anglo-Indian cooking in the 17th century as spicy sauces were added to plain boiled and cooked meats."
                  ),
                  margin: EdgeInsets.only(right: 20,left: 20),
                ),
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 10,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: 24,
                icon: Icons.remove,
                backgroundColor: Color(0xFF89dad0),
                iconColor: Colors.white,),
                BigText(text: " ₹ 250 "+" X "+" 0 "),
                AppIcon(iconSize: 24,
                icon: Icons.add,
                backgroundColor: Color(0xFF89dad0),
                iconColor: Colors.white,)
              ],
            ),
          ),
          Container(
        height: 120,
        padding: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
        decoration: const BoxDecoration(
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
              child:Icon(
                Icons.favorite,
                color: Color(0xFF89dad0),
              )
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
        ],
      ),
    );
  }
  
}