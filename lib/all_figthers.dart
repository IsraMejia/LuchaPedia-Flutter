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

          _figthersTable()          

        ]
      )


    );
  }//build 

  Widget _figthersTable(){
    return  Table(
      children:  [
        TableRow( 
          children:[
            Container( width: 100, height: 100,
              color: Colors.blue,
              margin: EdgeInsets.all(10),
            ),
            Container( width: 100, height: 100,
              color: Colors.red,
              margin: EdgeInsets.all(10),
            ),
            Container( width: 100, height: 100,
              color: Colors.green,
              margin: EdgeInsets.all(10),
            ),
          ]
       ),

       TableRow( 
         children:[
         Container( width: 100, height: 120,
           color: Colors.yellow,
           margin: EdgeInsets.all(10),
         ),
         Container( width: 100, height: 100,
           color: Colors.indigoAccent,
           margin: EdgeInsets.all(10),
         ),
         Container( width: 10, height: 70,
           color: Colors.lightGreenAccent,
           margin: EdgeInsets.all(10),
         ),
         ]
       ),

       TableRow( 
        children:[
         Container( width: 100, height: 90,
           color: Colors.blueGrey[100] ,
           margin: EdgeInsets.all(10),
         ),
         Container( width: 100, height: 80,
           color: Colors.greenAccent,
           margin: EdgeInsets.all(10),
         ),
         Container( width: 10, height: 100,
           color: Colors.brown[100],
           margin: EdgeInsets.all(10) ,
         ),
        ]
       ),

      ],
    );
          //Table
  }


}//Class AllFighters