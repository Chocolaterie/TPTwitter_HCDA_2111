import 'package:flutter/material.dart';
import 'package:tp_twitter/login-form-widget.dart';

class TwitterCard extends StatelessWidget {
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
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          Expanded(child: IconButton(splashRadius: 25, onPressed: () {}, icon: Image.asset("images/reply.png"))),
          Expanded(child: IconButton(splashRadius: 25, onPressed: () {}, icon: Image.asset("images/retweet.png"))),
          Expanded(child: IconButton(splashRadius: 25, onPressed: () {}, icon: Image.asset("images/favorite.png"))),
        ],),
      )
    ],
    );
  }

}

class TwitterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TwitterCard(),
      ],
    );
  }
}

