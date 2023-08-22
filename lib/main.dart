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
          Expanded(child: Text("TODO LE MILIEU")),
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