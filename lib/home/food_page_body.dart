import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tomato/widgets/big_text.dart';
import 'package:tomato/widgets/icon_and_text_widget.dart';
import 'package:tomato/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget{
   const FoodPageBody({Key? key}) :super (key: key);
  @override
   _FoodPageBodyState createState()=>  _FoodPageBodyState(); 
}

class _FoodPageBodyState extends State<FoodPageBody>{
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor=0.8;
  double _height=220;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
     setState(() {
         _currPageValue = pageController.page!;
     });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Container(
    //color: Colors.redAccent,
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
     Matrix4 matrix = new Matrix4.identity();
      if(index==_currPageValue.floor()){
        var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
        var currTrans = _height*(1-currScale)/2;
         matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
      }else if(index==_currPageValue.floor()+1){
        var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
        var currTrans = _height*(1-currScale)/2;
         matrix = Matrix4.diagonal3Values(1, currScale, 1);
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
      }else if(index==_currPageValue.floor()-1){
        var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
        var currTrans = _height*(1-currScale)/2;
         matrix = Matrix4.diagonal3Values(1, currScale, 1);
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
      }else{
        var currScale=0.8;
         matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
      }

    return Transform(
      transform: matrix,
      child: Stack(
        children:[
           Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10,right: 10),
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
            height: 120,
            margin: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Spicy Curry"),
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
                  ],),
                  SizedBox(height: 20),
                  Row(children:  const [
                    IconAndTextWidget(
                    icon: Icons.account_circle_sharp , 
                    text: "Normal",
                    iconColor: Colors.orangeAccent ),
                     IconAndTextWidget(
                    icon: Icons.location_on , 
                    text: "1.4 Km",
                    iconColor: Color(0xFF89dad0) ),
                     IconAndTextWidget(
                    icon: Icons.access_time_filled_rounded , 
                    text: "45 Min",
                    iconColor: Color(0xFFfcab88) )
                  ],)
                ],
              ),
            ),
          ),
        ),
        ]
      ),
    );
  }
}