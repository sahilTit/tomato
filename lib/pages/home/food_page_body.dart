import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tomato/utils/dimensions.dart';
import 'package:tomato/widgets/app_column.dart';
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
  double _height=Dimensions.PageViewContainer;
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
  return Column(
    children: [
      Container(
        //color: Colors.redAccent,
        height: 320,
        child: 
      PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (contex, position){
        return _buildPageItem(position);
      }),
      ),
      new DotsIndicator(
       dotsCount: 5,
       position: _currPageValue,
       decorator: DotsDecorator(
         activeColor: Color(0xFF89dad0),
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
           ),
        ),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: 10,),
               Container(
                 margin: EdgeInsets.only(bottom: 3),
                 child: BigText(text: ".",
                 color: Colors.black26),
               ),
               SizedBox(width: 10,),
               Container(
                  margin: EdgeInsets.only(bottom: 2),
                 child: SmallText(text: "Food pairing",
                 color: Colors.black26,),
               )
            ],
          ),
        ),
        //list of food and images
         ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return Container(
                margin: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food10.jpg")
                        )
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Curry with lots of Spices form India"),
                              SizedBox(height: 10,),
                              SmallText(text: "with Indian characteristics"),
                              SizedBox(height: 10,),
                               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  const [
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
                    )
                  ],
                ),
              );
          }),
    ],
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
            height: Dimensions.PageViewTextContainer,
            margin: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow:  [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0 , 5)
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,0)
                ),
                 BoxShadow(
                  color: Colors.white,
                  offset: Offset(5,0)
                )
              ]
            ),
            child: AppColumn(text: 'Spicy Curry',)
          ),
        ),
        ]
      ),
    );
  }
}