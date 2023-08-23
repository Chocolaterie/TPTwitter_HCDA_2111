import 'package:flutter/material.dart';

void main() {
  runApp(AppTwitter());
}

class AppTwitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TwitterPage(),
    );
  }

}

class TwitterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Header
          Container(
            color: Color(0xFF58B0F0),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(child: Text("Nouveau" , style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("Accueil",  style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)),
                  Expanded(child: Text("Rechercher", style: TextStyle(color: Colors.white), textAlign: TextAlign.right))
                ],
              ),
            ),
          ),
          Expanded(child: Column(children: [
            // Image + Texte
            Container(
              height: 150,
              child: Row(children: [
                Image.asset("images/dog.png", width: 150),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("v.lechacal2023@eni.fr"),
                          ),
                        ),
                        Expanded(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")),
                      ],
                    ),
                  ),
                )
              ],),
            ),
            // 3 Options
            Row(children: [
              Expanded(child: Text("Répondre", textAlign: TextAlign.center,)),
              Expanded(child: Text("Retweet", textAlign: TextAlign.center,)),
              Expanded(child: Text("Favoris", textAlign: TextAlign.center,)),
            ],)
          ],

          )),
          // Footer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              children: [
                Expanded(child: Text("Fil", style: TextStyle(color: Colors.black54), textAlign: TextAlign.center,)),
                Expanded(child: Text("Notification", style: TextStyle(color: Colors.black54), textAlign: TextAlign.center,)),
                Expanded(child: Text("Messages", style: TextStyle(color: Colors.black54), textAlign: TextAlign.center,)),
                Expanded(child: Text("Moi", style: TextStyle(color: Colors.black54), textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

}