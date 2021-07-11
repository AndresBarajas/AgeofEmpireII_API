import 'package:api_barajas/Pages/Details_civilization.dart';
import 'package:api_barajas/Pages/Home_Page.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app civilizations',
      routes: {
        '/': (_)=>HomePage(),
        '/details':(_)=>DetailsCivilization()
      },
    );
  }
}