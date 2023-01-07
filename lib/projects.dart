import 'package:flutter/material.dart';
import 'package:my_website/projectBox.dart';
class project_page extends StatefulWidget {
  const project_page({Key? key}) : super(key: key);

  @override
  State<project_page> createState() => _project_pageState();
}

class _project_pageState extends State<project_page> {
  String project_chatApp="An android application in which the chats are encrypted and can only be decrypted by the user after entering their pin. The user has the option to choose between AES or DES algorithms for encryption. The user's data and chats are stored in Firebase Realtime Database and login authentication is performed through Firebase connectivity.";
  String chatApp_link="https://github.com/aviral38/messsage_encryption_app";
  String ipl_app="The android/iOS application is designed to predict the team that is likely to win an IPL match. It takes into account various factors such as the form of the players, the pitch and weather conditions, and the performance of the teams in previous matches, etc. The app uses machine learning algorithms to analyze the data and provide accurate predictions for the matches. It then provides a verdict on whether it is safe to place a bet on the predicted team or if the user should wait. This can be a useful tool for those interested in betting on IPL matches as it allows them to make informed decisions based on the predicted outcome.It is a useful tool for cricket fans looking to place bets or simply wanting to know the likely outcome of a match.";
  String ipl_app_link='https://github.com/aviral38/final_year_project';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      color: Color(0xffffa472),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: height*0.05,),
              Container(
                color: Color(0xffef6d58),
                height: height*0.2,
                width: width*0.8,
                child: Row(
                  children: [
                    Flexible(child: Text('Encrypted Message Chatting Application',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40,))),
                    Image(image: AssetImage('images/messaging.jpeg'),),
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              Pbox(text_to_show: 'Encrypted Message Chatting Application',image_name: 'messaging.jpeg',project_description: project_chatApp,link: chatApp_link,),
              SizedBox(height: height*0.02,),
              Pbox(text_to_show: 'IPL match Prediction Application',image_name: 'ipl.png',project_description: ipl_app,link: ipl_app_link,)

            ],
          ),


        ],
      ),
    );
  }
}
