import 'package:flutter/material.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget{
   const FoodPageBody({Key? key}) :super (key: key);
  @override
   _FoodPageBodyState createState()=>  _FoodPageBodyState(); 
}

class _FoodPageBodyState extends State<FoodPageBody>{
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
  return Container(
    color: Colors.redAccent,
    height: 320,
    child: 
  PageView.builder(
    controller: pageController,
    itemCount: 5,
    itemBuilder: (contex, position){
    return _buildPageItem(position);
  }),
  );
  }
   Widget _buildPageItem(int index){
    return Stack(
      children:[
         Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/food10.jpg")
          )
        ),
      ),
      Align( alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
          ),
          child: Container(
            padding: EdgeInsets.only(top: 10,left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "curry"),
                SizedBox(height: 10,),
                Row(children: [
                  Wrap(children: List.generate(5, (index) => Icon(Icons.star,
                  color:  Color(0xFF89dad0),
                  size:17 ,)
                  )
                  ,),
                  SizedBox(width: 10,),
                  SmallText(text: "4.5"),
                  SizedBox(width: 10),
                  SmallText(text: "273"),
                  SizedBox(width: 5),
                  SmallText(text: "comments")
                ],)
              ],
            ),
          ),
        ),
      ),
      ]
    );
  }
}