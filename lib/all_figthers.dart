import 'package:flutter/material.dart';

class AllFighters extends StatelessWidget {

  final String urlHeroina = "https://i.pinimg.com/736x/c4/be/49/c4be4936ebc7e2bc808b805f887a1634.jpg";
  final String urlMistico ="https://www.yucatan.com.mx/wp-content/uploads/2019/06/carismas.jpg?width=1200&enable=upscale";
  final String urlLaHiedra = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTScgaEjlD7IFqNG7jK3eTKzz98bQbIjzGSg&usqp=CAU";
  final String urlParca ="https://imagenes.milenio.com/bznicQhVaurqVaL73PbyaeQGFAA=/958x596/https://www.milenio.com/uploads/media/2019/10/21/parka-hospitalizado-sufrir-impactante-caida_114_61_723_450.jpg" ;
  final String urlPrincesaAzul ="https://pbs.twimg.com/media/EMwiE6mUUAA_tkk.jpg";
  final String urlMascaraSagrada ="https://vignette.wikia.nocookie.net/prowrestling/images/b/b4/Mascara_Sagrada.jpg/revision/latest/top-crop/width/360/height/450?cb=20110815154549";
  final String urlKeira = "https://laverdadnoticias.com/__export/1546480401769/sites/laverdad/img/2019/01/02/keyra4.jpg_423682103.jpg";
  final String urlDosCaras ="https://pm1.narvii.com/6348/9354bb6b1622daa3ddfc4459b84564b016d8e11f_hq.jpg";
  final String urlLadyFlammer = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZjfVC9suHONXvvH31kar0u3TGAEwl2mR9XA&usqp=CAU";
  final String urlOctagon = "https://bolavip.com/__export/1585783464420/sites/bolavip/img/2020/04/01/71f46e9f612766243872c34fcde97038_crop1585782103611.jpg_1902800913.jpg";
  final String urlBaronessa = "https://www.lavozdelafrontera.com.mx/deportes/zfftgy-okdsc_6794.jpg/ALTERNATES/FREE_768/okDSC_6794.jpg";
  final String urlAtlantis ="https://2.bp.blogspot.com/-pNdD_Z7OTbM/UiyhxUgQIjI/AAAAAAAAPw0/ccJQHZN4-sQ/s1600/atlantis7.jpg";
  
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

          figthersTable()          

        ]
      )


    );
    //Scaffold original LuchaPedia

    

  }//build 

  Widget figthersTable(){
    return  Table(
      children:  [

        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              width: 70, height: 100,
              color: Colors.blue,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
            Center(
              child: Container(
                width: 50, height: 100,
                color: Colors.red,
              ),
            ),
            Center(
              child: Container(
                width: 50, height: 100,
                color: Colors.yellow,
              ),
            )
          ]
        ),



        TableRow( 
          children:[
            
            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.only(left: 30, right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlHeroina ,
                   height: 115,
                   width: 115,
                   fit: BoxFit.fill,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Heroina", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.yellow[50], 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            Container( width: 50,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlMistico ,
                   height: 115,
                   width: 110,
                   fit: BoxFit.fill ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Mistico", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.white, 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

             Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlLaHiedra ,
                   height: 115,
                   width: 110,
                   fit: BoxFit.fitHeight ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("La Hiedra", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.white, 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),
          ]
       ),
       
       TableRow(
         children: [
           Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlParca ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.fitHeight ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("La Parca", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.white, 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlPrincesaAzul ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 70,
                    child: Text("Princesa \nAzul", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.white , 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),


            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlMascaraSagrada ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 70,
                    child: Text("Mascara \nSagradaa", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.indigo[50] , 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

         ]
       ),
       //tableRow

       TableRow(
         children: [
           Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlKeira ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Keira", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.blueGrey[50] , 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlDosCaras ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Dos Caras", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.blueGrey[50] , 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),


            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlLadyFlammer ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 70,
                    child: Text("Lady \nFlammer", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.blueGrey[50], 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

         ]
       ),
       //tableRow

       TableRow(
         children: [
           
            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlOctagon ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Octagon", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.blueGrey[50], 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlBaronessa ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Baronessa", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.yellow[50], 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            Container( width: 110, height: 115,
              // color: Colors.red,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                 children: <Widget>[
                     
                  FadeInImage.assetNetwork(
                  placeholder: 'assets/Gifs/loading.gif' ,
                   image: urlAtlantis ,
                   height: 120,
                   width: 115,
                   fit: BoxFit.cover ,
                  ),

                  Positioned(
                    top: 90,
                    child: Text("Atlantis", 
                     style: TextStyle(
                      fontSize: 18, color: Colors.yellow[50], 
                      fontWeight: FontWeight.bold ),
                    )
                  )
                 ],
                ) 
              ),
            ),

            

         ]
       )
       //tableRow

      ],
    );

    //Table


  }


}//Class AllFighters