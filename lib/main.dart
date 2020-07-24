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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: <Widget>[

            Center(
              child: Container(
                height: 300.0 ,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100]
                ),
              ),
            ),
            Text("Hola"),

          ],
        )
        
      ),
    );
  }//build
}//MyApp