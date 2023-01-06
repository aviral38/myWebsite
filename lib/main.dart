import 'package:flutter/material.dart';
import 'main_page.dart';
import 'projects.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>mainPage(),
        '/project':(context)=>project_page(),
      }
    );
  }
}

