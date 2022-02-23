import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget{
   const FoodPageBody({Key? key}) :super (key: key);
  @override
   _FoodPageBodyState createState()=>  _FoodPageBodyState(); 
}

class _FoodPageBodyState extends State<FoodPageBody>{
  @override
  Widget build(BuildContext context) {
  return Container(
    color: Colors.redAccent,
    height: 320,
    child: 
  PageView.builder(
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
            image: AssetImage("assets/images/food2.jpg")
          )
        ),
      ),
      Align( alignment: Alignment.bottomCenter,
        child: Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/food2.jpg")
            )
          ),
        ),
      ),
      ]
    );
  }
}