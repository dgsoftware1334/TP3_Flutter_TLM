import 'package:flutter/material.dart';

class Screen2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 2_1"), centerTitle: true),
      backgroundColor: Colors.blue, // Arrière-plan bleu du Scaffold
      body: Container(
        color: Colors.grey,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          //physics :AlwaysScrollableScrollPhysics(),
          // Centrer les éléments verticalement
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red, // Couleur rouge
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.black), // Texte blanc
                ),
              ),
            ),
            // Espacement entre les containers
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.greenAccent, // Couleur verte
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Green',
                  style: TextStyle(color: Colors.black), // Texte noir
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.yellow, // Couleur jaune
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Yellow',
                  style: TextStyle(color: Colors.black), // Texte noir
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.blueGrey, // Couleur jaune
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Blue Grey',
                  style: TextStyle(color: Colors.black), // Texte noir
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.amberAccent, // Couleur jaune
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Amber Accent',
                  style: TextStyle(color: Colors.black), // Texte noir
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple, // Couleur jaune
              height: 150,
              width: 150,
              child: const Center(
                child: Text(
                  'Purple',
                  style: TextStyle(color: Colors.black), // Texte noir
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
