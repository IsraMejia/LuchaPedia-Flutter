import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:luchapedia/all_figthers.dart';

class BioFigther extends StatelessWidget {
  
  final String bioK ="KeMonito nacio el 3 de julio de 1967 es un icono de la lucha libre profesional mexicano, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).";
  final String bioKweb ="KeMonito nacio el 3 de julio de 1967 es un icono de la lucha libre profesional mexicano, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).\n\nAntes de ser KeMonito fue conocido como Alushe (1984-2003), cabe destacar haber participado bajo este nombre en el programa de televisión Odisea de Burbujas, Supervacaciones y las Aventuras de Chapulina.\n\nDe igual forma lucho bajo el nombre del Duende Maya. Como dato curioso tomo el título de Khemonito en el 2003, el cual lo sigue portando hasta la actualidad.";
  final String urlKemonito ="https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg" ;

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 811){
          return Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.directions_walk, size: 40.0),
              title: Text(
                'Luchapedia Mobile',
                style: TextStyle(fontSize: 30),
              ),
              backgroundColor: Colors.purpleAccent[700] ,
            
            ),
            body: 
             Stack(
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

                  Expanded(child: Container()),

                  luchadorBio(),

                  Expanded(child: Container()),

                  Center( 
                    child: Text(
                      "Mas Luchadores", 
                      style: TextStyle(fontSize: 29, color: Color.fromRGBO(220, 229, 227, 0.9)),
                    )
                  ),

                  listaLuchadores(context ),

                  Expanded(child: Container())

                ],
              ),
              ]
            )
            //stack biofigthers
            
          );
        //Scaffold BioFigther moviles
        }else{
          return Scaffold(
            
            appBar: AppBar(
              leading: Icon(Icons.directions_walk, size: 40.0),
              title: Text(
                'Luchapedia Web :) ${constraints.maxWidth}',
                style: TextStyle(fontSize: 30),
              ),
              backgroundColor: Colors.purpleAccent[700] ,
            
            ),
            body: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: <Widget>[
                    // Container(color: Colors.blueAccent[700]),
                    Container(
                      decoration: BoxDecoration( 
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 0.0),
                          end: Alignment(0.0, 0.5),
                          colors: [
                            Colors.purpleAccent[700],
                            Colors.deepPurpleAccent[400] ,
                          ], 
                        ),
                      ),
                    ),

                      luchadorBioWeb( constraints),
                    ]
                  )
                  //stack biofigthers
                ),
                
                Expanded(
                  child: Stack(
                  children: [

                    Container(
                      decoration: BoxDecoration( 
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 0.0),
                          end: Alignment(0.0, 0.5),
                          colors: [
                            Colors.purpleAccent[700],
                            Colors.deepPurpleAccent[400] ,
                          ], 
                        ),
                      ),
                    ),

                    AllFighters().figthersTable(context)
                  ],
                    
                  )
                )
              ],
            )
          );
          //Scaffold2 LayoutBuilder 
        }
      }
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
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlKemonito,
                   width: 350.0,
                ),
                // Image(
                //   width: 350.0,
                //   image: NetworkImage(urlKemonito),
                // ),
              ),
            ),

            
            Positioned(
              top: 155,
              left: 10,
              child: Container(
                width: 330.0,
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
                        style: TextStyle(fontSize: 16, color: Colors.yellow[50] ),
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

  
  Widget listaLuchadores(BuildContext context){
    
    return  Center(
      child: Container(
      margin: EdgeInsets.only(top: 10),
      height: 120, 
      width: 380 ,
      // decoration: BoxDecoration(
      //   color: Colors.green ,
      //   borderRadius: BorderRadius.circular(10.0)
      // ),
       child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/elSanto.jpg" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("El Santo", style: TextStyle( fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold  ),)
              ),
            ),


            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/Angelica.png" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("Angelica", style: TextStyle(fontSize: 18, color: Colors.green[50], fontWeight: FontWeight.bold ),)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/blueDemon.jpg" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("BlueDemon", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold ),)
              ),
            ),

            
            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/ladyShani.png" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("LadyShani", style: TextStyle(fontSize: 18, color: Colors.green[50], fontWeight: FontWeight.bold ),)
              ),
            ),
            

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/historico.jpg" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("Historico", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold ),)
              ),
            ),

            
            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/diosaQuetzal.png" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 65, left: 2),
                child: Text("Diosa Quetzal", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold ),)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/frijolito.jpg" ),
                fit: BoxFit.cover
               )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text("Frijolito", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold ),)
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              width: 100,
              decoration: BoxDecoration(
              //color: Colors.yellow ,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/Luchadores/masLuchadores.png" ),
                fit: BoxFit.contain
               )
              ),
              child: Container(
                // margin: EdgeInsets.only(top: 85, left: 2),
                child:
                    IconButton(
                      icon: Icon(Icons.add_circle_outline,
                        color: Colors.lightGreenAccent[400] ,
                        size: 80,
                      ), 
                      onPressed: (){
                        print('Mas Luchadores ->');
                        Navigator.push( context,  MaterialPageRoute(
                          builder:  (BuildContext context) => AllFighters (),
                          ),
                        );
                      },
                    ),
                    
              ),
            ),


          ],
        ),
      ),
    );
  }


  Widget luchadorBioWeb( BoxConstraints constraints){
    return Stack(
      children: <Widget>[

          Positioned(
          top: 60,
          left: constraints.maxWidth *0.05,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/Gifs/loading.gif' ,
               image: urlKemonito,
               width: (constraints.maxWidth < 1200) ? 430 : constraints.maxWidth * 0.4,
               //430, <- el width normal antes de que sea mas responsivo
            ),
          ),
        ),

        
        Positioned(
          top: (constraints.maxWidth < 1200) ? 245 : constraints.maxWidth * 0.2,
          //245,<- el top normal antes de que sea mas responsivo
          left: constraints.maxWidth *0.07,
          child: Container(
            width: (constraints.maxWidth < 1200) ? 380 : constraints.maxWidth * 0.37,
            // 380.0, <- el width normal antes de que sea mas responsivo
            height: constraints.maxHeight * 0.55,
            //510.0 ,<- el height normal antes de que sea mas responsivo
            decoration: BoxDecoration(
              color: Colors.indigo[700] ,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: <Widget>[
                //  ListTile(title: Text('hola'),)
                Text('Kemonito:' , 
                  style: TextStyle(fontSize: 38, color: Colors.yellow[200] ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(bioKweb , 
                    style: TextStyle(
                      fontSize: (constraints.maxWidth < 1230) ? 15 : 17,
                      color: Colors.yellow[50] 
                    ),
                  ),
                ),

                Container(
                  width: 120,
                  child: FlatButton(
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
                )

              ],
            ),
          )
        )
        
      ],
    );
  }

  


}//BioFighter