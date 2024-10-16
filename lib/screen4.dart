import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Screen4 extends StatelessWidget {
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 2,mainAxisSpacing: 2, childAspectRatio: 1),
              children: <Widget>[
                InkWell(
                  onTap:() async {
                    print('--------------------------------');
                 
                 
                  Uri toLaunch =  Uri(scheme: 'https', host: 'www.google.com',);
                  
                  if (!await launchUrl(
                          toLaunch,
                          mode: LaunchMode.externalApplication,
                        )) {
                          throw Exception('Could not launch $toLaunch');
                        }
                  },

                  
                  child: Container(
                   margin: EdgeInsets.all(20),
                    color: Colors.red,  // Couleur rouge
                    height: 150,
                    width: 150,
                    child:    Center(
                      child: Image.network(
        
                        "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg", 
                      fit: BoxFit.contain),
                    ),
                  ),
                ),
               Container(
              margin: EdgeInsets.all(20),
                  color: Colors.red,  // Couleur rouge
                   
                  child: const Center(
                    child: Image(image: NetworkImage(
                      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"),
                      fit: BoxFit.cover,
                      ),
                  ),
                ),
                 // Espacement entre les containers
               ],
            ),
          ),
        ),
      );
   }
}
