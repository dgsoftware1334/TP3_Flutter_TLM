import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return Scaffold(
        appBar: AppBar(title: Text("Screen 1"),centerTitle:true),
        backgroundColor: Colors.blue,  // Arrière-plan bleu du Scaffold
        body: Container(
          //height: 100,
         // color: Colors.grey,
         // margin: EdgeInsets.symmetric(vertical: 50.0),
          child: ListView(
            scrollDirection :Axis.vertical,
            //physics :AlwaysScrollableScrollPhysics(),
           // Centrer les éléments verticalement
            children: <Widget>[
              Container(
               margin: EdgeInsets.all(20),
                color: Colors.red,  // Couleur rouge
                height: 150,
                width: 150,
                child: const Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color:Colors.black),  // Texte blanc
                  ),
                ),
              ),
               // Espacement entre les containers
              Container( 
              margin: EdgeInsets.all(20),               
              color: Colors.greenAccent,  // Couleur verte
                height: 150,
                width: 150,
                child:const Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color:Colors.black),  // Texte noir
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                color: Colors.yellow,  // Couleur jaune
                height: 150,
                width: 150,
                child: const Center(
                  child: Text(
                    'Yellow',
                    style: TextStyle(color: Colors.black),  // Texte noir
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                color: Colors.yellow,  // Couleur jaune
                height: 150,
                width: 150,
                child: const Center(
                  child: Text(
                    'Yellow',
                    style: TextStyle(color: Colors.black),  // Texte noir
                  ),
                ),
              ),Container(
                  margin: EdgeInsets.all(20),
                color: Colors.yellow,  // Couleur jaune
                height: 150,
                width: 150,
                child: const Center(
                  child: Text(
                    'Yellow',
                    style: TextStyle(color: Colors.black),  // Texte noir
                  ),
                ),
              ),Container(
                  margin: EdgeInsets.all(20),
                color: Colors.yellow,  // Couleur jaune
                height: 150,
                width: 150,
                child: const Center(
                  child: Text(
                    'Yellow',
                    style: TextStyle(color: Colors.black),  // Texte noir
                  ),
                ),
              ),
            ],
          ),
        ),
      );
   }
}
