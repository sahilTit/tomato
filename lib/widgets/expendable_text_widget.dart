import 'package:flutter/material.dart';
import 'package:tomato/widgets/small_text.dart';

class ExpandableTexWidgets extends StatefulWidget{
  final String text;
  const ExpandableTexWidgets({Key? key, 
  required this.text})
  : super(key: key);

  @override
  _ExpandableTextWidgetsState createState()=> _ExpandableTextWidgetsState();
}

class _ExpandableTextWidgetsState extends State<ExpandableTexWidgets>{
  late String firstHalf;
  late String secondHalf;
  
  bool HiddenText=true;
  double textHeight= 120;

  @override
  void initState() {
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(text: HiddenText?(firstHalf+"..."):(firstHalf+secondHalf) ),
          InkWell(
            onTap: (){
              setState(() {
                HiddenText=!HiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: Color(0xFF89dad0),),
                Icon(HiddenText?Icons.keyboard_arrow_down_sharp:Icons.keyboard_arrow_up_sharp,color: Color(0xFF89dad0),)
              ],
            ),
          )
        ],
      ),
    );
  }
}