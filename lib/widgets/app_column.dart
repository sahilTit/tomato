import 'package:flutter/material.dart';
import 'package:tomato/utils/dimensions.dart';
import 'package:tomato/widgets/icon_and_text_widget.dart';
import 'package:tomato/widgets/small_text.dart';
import 'big_text.dart';

class AppColumn extends StatelessWidget{
  final String text;
   AppColumn({Key? key,
    required this.text})
     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: text,size: 26,),
                  SizedBox(height: 10,),
                  Row(children: [
                    Wrap(children: List.generate(5, (index) => Icon(Icons.star,
                    color:  Color(0xFF89dad0),
                    size:17 ,)
                    )
                    ,),
                    SizedBox(width: Dimensions.height10,),
                    SmallText(text: "4.5"),
                    SizedBox(width: 10),
                    SmallText(text: "273"),
                    SizedBox(width: 5),
                    SmallText(text: "comments")
                  ],),
                  SizedBox(height: Dimensions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              );
  }
  
}