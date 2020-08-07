import 'package:flutter/material.dart';
import 'package:luchapedia/bio_fighter.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override

  
  
  Widget build(BuildContext context) {
  // double anchoPantalla = MediaQuery.of(context).size.width;
    return MaterialApp(
      color: Colors.purpleAccent[700] ,
      debugShowCheckedModeBanner: false,
      title: 'LuchaPedia',
      home: BioFigther(),
      

    );
  }//build

}//MyApp