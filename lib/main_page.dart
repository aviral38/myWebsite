import 'package:flutter/material.dart';
import 'dart:html' as html;
class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      color: Color(0xff28293e),
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.02,),
          Row(
            children: [
              Image(image: AssetImage('images/funfact.png'),height: height*0.12,width: width*0.1,),
              Text('This website was built using Flutter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)
            ],
          ),

          Row(children: [
            SizedBox(width:width*0.1),
            Column(
              children: [
                Container(height: height*0.05,width: width*0.06,color: Color(0xffef6d58),child: Text("It's Me",style: TextStyle(fontSize: 22.0,
                    fontStyle: FontStyle.italic,
                    fontWeight:FontWeight.bold,
                    color:Colors.black),),),
                ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    color: Color(0xffef6d58),
                    height: height*0.04,
                    width: width*0.02,
                  ),
                ),
                Container(child: Text('Aviral Singh',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),),
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Container(child: Text('Halsi',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),),

                  ],
                ),

              ],
            ),


            SizedBox(width:width*0.2),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Image(image: AssetImage('images/Oval.png'),height: height*0.4),
                  ],
                ),
                Container(decoration: BoxDecoration(
                  color: Color(0xffb550f8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                height: height*0.20,
                width: width*0.10,),
                Column(
                  children: [
                    SizedBox(height: height*0.01,),
                    Image(image: AssetImage('images/laptop.png'),height:height*0.18 ,width: width*0.12,),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: height*0.14,),
                    Row(
                      children: [
                        SizedBox(width: width*0.19,),
                        Stack(
                          children: [
                            Container(decoration: BoxDecoration(
                                color: Color(0xfff7cc47),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                )
                            ),
                              height: height*0.18,
                              width: width*0.15,),
                            Image(image: AssetImage('images/android.png'),height: height*0.2,width: width*0.2,)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            )
          ],),
          Row(
            children: [
              SizedBox(width: width*0.05,),
              Flexible(child: Container(child: Text('(Computer Science grad @ University of Illinois at Urbana Champaign(UIUC))',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white),),)),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: width*0.05,),
              Flexible(child: Container(child: Text('I have a strong enthusiasm for technology and am passionate about learning new technology. I enjoy coding and have worked quite a bit in Android Application Development, Machine Learning, and Software Development in general.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),)),
            ],
          ),
          SizedBox(height: height*0.1,),
          Row(
            children: [
              SizedBox(width: width*0.05,),
              MaterialButton(onPressed: (){
                Navigator.pushNamed(context, '/project');
              },child: Text('Explore Projects',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),color: Color(0xffef6d58),),
            ],
          ),
          SizedBox(height: height*0.02,),
          Center(child: Text('connect with me',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed:(){
                html.window.open('https://www.linkedin.com/in/aviral-singh-halsi-mr11/',"_blank");
              },child: Image(image: AssetImage('images/linkedin.png'),height: height*0.07,)),
              SizedBox(width: 10,),
              MaterialButton(onPressed:(){
                html.window.open('https://github.com/aviral38',"_blank");
              },child: Image(image: AssetImage('images/github.png'),height: height*0.15,)),
            ],
          ),

          


        ],
      ),
    );
  }

}
