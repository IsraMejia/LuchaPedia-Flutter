import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override

  String urlKemonito ='https://s3.superluchas.com/2020/07/Kemonito-00243.jpg';

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

            luchadorBio(),

            Text("Hola"),

          ],
        )
        
      ),
    );
  }//build

  Widget luchadorBio(){
    return Center(
      child: Container(
        height: 400.0 ,
        width: 350.0,
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: Stack(
          children: <Widget>[

              Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  height: 240,
                  image: NetworkImage(urlKemonito),
                ),
              ),
            ),

            
            Positioned(
              top: 250,
              child: Text('hola', 
              style: TextStyle(
                fontSize: 40, color: Colors.white
              ),),
            )
            
          ],
        ),
      ),
    );
  }
}//MyApp