import 'package:flutter/material.dart';

class TwitterHeaderButton extends StatelessWidget {

  String label;
  TextAlign align;

  TwitterHeaderButton(this.label, {this.align = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(label,  style: TextStyle(color: Colors.white), textAlign: align,));
  }
}

class TwitterHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            TwitterHeaderButton("Nouveau"),
            TwitterHeaderButton("Accueil", align: TextAlign.center,),
            TwitterHeaderButton("Rechercher", align: TextAlign.right,)
          ],
        ),
      ),
    );
  }
}