import 'package:flutter/material.dart';
import 'package:neumorphism_ui/pages/homePage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive_Ui",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
