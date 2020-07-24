import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override

  String urlKemonito ="https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg" ;
  String bioK ="KeMonito (3 de julio de 1967) es un mánager de lucha libre profesional y luchador profesional mexicano, quien actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).";

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
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[

            luchadorBio(),
            Container(height: 20,),
            Text("Hola"),

          ],
        )
        
      ),
    );
  }//build

  Widget luchadorBio(){
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10) ,
        height: 320.0 ,
        width: 350.0,
        // decoration: BoxDecoration(
        //   color: Colors.indigo[50] ,
        //   borderRadius: BorderRadius.circular(40.0)
        // ),
        child: Stack(
          children: <Widget>[

              Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  width: 350.0,
                  image: NetworkImage(urlKemonito),
                ),
              ),
            ),

            
            Positioned(
              top: 170,
              left: 20,
              child: Container(
                width: 320.0,
                height: 150.0 ,
                decoration: BoxDecoration(
                  color: Colors.indigo[100] ,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround ,
                  children: <Widget>[
                    //  ListTile(title: Text('hola'),)
                    Text('Kemonito:' , 
                      style: TextStyle(fontSize: 28, color: Colors.yellow[50] ),
                    ),
                    Text(bioK , 
                      style: TextStyle(fontSize: 17, color: Colors.blueAccent[400] ),
                    ),
                  ],
                ),
              )
            )
            
          ],
        ),
      ),
    );
  }
}//MyApp