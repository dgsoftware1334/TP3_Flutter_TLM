import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1"), centerTitle: true),
      backgroundColor: Colors.blue, // Arrière-plan bleu du Scaffold
      body: Container(
        width: double.infinity,
        color: Colors.white,
        margin: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center, // Centrer les éléments verticalement
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
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
              margin: EdgeInsets.only(bottom: 10.0),
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
          ],
        ),
      ),
    );
  }
}
