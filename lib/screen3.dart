import 'package:flutter/material.dart';


class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return Scaffold(
        appBar: AppBar(title: Text("Screen 1"),centerTitle:true),
        backgroundColor: Colors.blue,  // Arrière-plan bleu du Scaffold
        body: Container( 
          
          width: double.infinity,
          //color: Colors.white,        
         // margin:const EdgeInsets.all(50.0) ,
        //  padding:const EdgeInsets.all(50.0) ,
          child: Container(
            //height: 100,
           // color: Colors.grey,
           // margin: EdgeInsets.symmetric(vertical: 50.0),
            child: GridView(
              
             // scrollDirection :Axis.vertical,
              //physics :AlwaysScrollableScrollPhysics(),
             // Centrer les éléments verticalement
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
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
              ],
            ),
          ),
        ),
      );
   }
}
