import 'package:flutter/material.dart';
import 'dart:html' as html;
class Pbox extends StatelessWidget {
  Pbox({required this.image_name,required this.text_to_show,required this.project_description,required this.link});
  final String image_name;
  final String text_to_show;
  final String project_description;
  final String link;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xffef6d58),
      height: height*0.6,
      width: width*0.8,
      child: Column(
        children: [
          SizedBox(height: height*0.02,),
          Row(
            children: [
              SizedBox(width: width*0.02,),
              Flexible(child: Container(height: height*0.2,
                  width: width*0.5,child: Center(child: Text(text_to_show,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40,))))),
              SizedBox(width: width*0.1,),
              Image(image: AssetImage('images/$image_name'),height: height*0.3,width: width*0.4,),
            ],
          ),
          Text(project_description,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20,)),
          SizedBox(height: height*0.02,),
          MaterialButton(onPressed: (){
            html.window.open(link,"_blank");
          },child: Text('Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20,)),color: Colors.white,)
        ],
      ),
    );
  }
}
