import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.purpleAccent[700] ,
      debugShowCheckedModeBanner: false,
      title: 'LuchaPedia',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.directions_walk, size: 40.0),
          title: Text(
            'Luchapedia',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.purpleAccent[700] ,
         
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
            Center(child: Text("Hola")), 
            Text("Hola"), 
            Text("Hola"), 
            Text("Hola"), 
            Text("Saluditos"), 
            Text("Hola"), 
            Text("Hola"), 
            Text("Hola"),

          ],
        )
        
      ),
    );
  }
}