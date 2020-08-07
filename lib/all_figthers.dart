import 'package:flutter/material.dart';

class AllFighters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mas Luchadores', style: TextStyle(fontSize: 30),
        ),
         backgroundColor: Colors.purpleAccent[700] ,
      ),

      body: Stack(
        children: <Widget>[
          // Container(color: Colors.blueAccent[700]),
          Container(
            decoration: BoxDecoration( 
              gradient: LinearGradient(
                begin: Alignment(0.0, 0.0),
                end: Alignment(0.6, 0.99),
                colors: [
                  Colors.purpleAccent[700],
                  Colors.deepPurpleAccent[400] ,
                ], 
              ),
            ),
          ),

          


          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: <Widget>[
              Text('Mas Luchadoresasdasdasdasdasdasdasdasdas', style: TextStyle(fontSize: 30)),
              Container(color: Colors.green, height: 100, width: 100,)
            ]
          ),

        ]
      )


    );
  }
}