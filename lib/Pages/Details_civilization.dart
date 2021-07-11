import 'package:api_barajas/Model/civilization_model.dart';
import 'package:api_barajas/main.dart';
import 'package:flutter/material.dart';

class DetailsCivilization extends StatelessWidget{
@override
Widget build(BuildContext context) {
  CivilizationModel civilization = ModalRoute.of(context)!.settings.arguments as CivilizationModel;
    ThemeData(primaryColor: Colors.pink);
  return Scaffold(
      appBar: AppBar(
        title: const Text('Age of Empire Civilizations'), backgroundColor: Colors.purple[500],),
        backgroundColor: Colors.pink[100],
      body: ListView(
        children: <Widget>[
        Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://as01.epimg.net/meristation/imagenes/2019/11/18/trucos/1574079348_118792_1574079558_noticia_normal.jpg"),
        ),
         Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2017/10/age-empires-definitive-edition.jpg?itok=Yp9bgdH3"),
        ),
        Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://media.giphy.com/media/mDcz2dGrVzVNC/giphy.gif"),
          ),
          Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://4.bp.blogspot.com/-VV3_sIZJ-W4/Xc2D0ds_I3I/AAAAAAAAC0U/UZu8sO1PG8oZe8qvi6inTo6EbkfIibIuQCLcBGAsYHQ/s1600/Age-of-Empires-Definitive-Edition-II-2019-imagen-002.jpg"),
          ),
           Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://i.blogs.es/90336f/030413_aoe2_02b/450_1000.jpg"),
           ),
           Container(
          padding: EdgeInsets.all(2.0),
          child: Image.network(
            "https://1.bp.blogspot.com/-I3Kh5BuwaQw/XdBzBZSVCxI/AAAAAAAANzE/QyITJ1IVdFEakJbEVm8i8s5kGwJM_TeLwCKgBGAsYHg/s1600/ss_ea0429a12f9d65f3e6b5384e0117fceef2109e45.1920x1080.jpg"),
           ),
        ]
      ),
  );
  
  }
}

