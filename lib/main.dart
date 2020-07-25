import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override

  String urlKemonito ="https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg" ;
  String bioK ="KeMonito nacio el 3 de julio de 1967 es un icono de la lucha libre profesional mexicano, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).";
  
  Widget build(BuildContext context) {
  // double anchoPantalla = MediaQuery.of(context).size.width;
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[

              luchadorBio(),

              Container(height: 30,),

              Center( 
                child: Text(
                  "Mas Luchadores", 
                  style: TextStyle(fontSize: 25, color: Color.fromRGBO(220, 229, 227, 0.9)),
                )
              ),

               listaLuchadores(),

            ],
          ),
          ]
        )
        
      ),
    );
  }//build

  Widget luchadorBio(){
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 25) ,
        height: 385.0 ,
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
                height: 210.0 ,
                decoration: BoxDecoration(
                  color: Colors.indigo[700] ,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround ,
                  children: <Widget>[
                    //  ListTile(title: Text('hola'),)
                    Text('Kemonito:' , 
                      style: TextStyle(fontSize: 28, color: Colors.yellow[200] ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(bioK , 
                        style: TextStyle(fontSize: 16.3, color: Colors.yellow[50] ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          color: Colors.teal[400],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          onPressed: (){}, 
                          child: Text('Ver mas', style: TextStyle(fontSize: 18),),
                        ),

                        Container(width: 30),

                        FlatButton(
                          color: Colors.pink[400] ,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          onPressed: (){}, 
                          child: Row(
                            children: <Widget>[
                              Text('Me gusta'),
                              Icon(Icons.favorite_border)
                            ],
                          ),
                        ),
                        

                      ],
                    )

                  ],
                ),
              )
            )
            
          ],
        ),
      ),
    );
  }

  
  Widget listaLuchadores( ){
    return  Center(
      child: Container(
      margin: EdgeInsets.only(top: 10),
      height: 130, 
      width: 380 ,
      decoration: BoxDecoration(
        color: Colors.green ,
        borderRadius: BorderRadius.circular(10.0)
      ),
       child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.indigo[50] ,
              borderRadius: BorderRadius.circular(10.0)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.indigo[50] ,
              borderRadius: BorderRadius.circular(10.0)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.indigo[50] ,
              borderRadius: BorderRadius.circular(10.0)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.indigo[50] ,
              borderRadius: BorderRadius.circular(10.0)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.indigo[50] ,
              borderRadius: BorderRadius.circular(10.0)
              ),
            ),
            



          ],
        ),
      ),
    );
  }


}//MyApp