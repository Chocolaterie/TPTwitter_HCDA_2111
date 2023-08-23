import 'package:flutter/material.dart';

class TwitterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    );
  }
}
