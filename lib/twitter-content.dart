import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tp_twitter/login-form-widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:tp_twitter/tweet.dart';

class TwitterCard extends StatelessWidget {
  // Donnée tweet
  Tweet tweet;

  /**
   * La donnée de la carte tweet
   */
  TwitterCard(this.tweet);

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
                      child: Text(tweet.author),
                    ),
                  ),
                  Expanded(child: Text(tweet.message)),
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

class TwitterContent extends StatefulWidget {

  @override
  State<TwitterContent> createState() => _TwitterContentState();
}

class _TwitterContentState extends State<TwitterContent> {
  // j'ai une liste de vide de tweet
  var tweets = [];

  void onClickLoadTweet() async {
    // J'appel l'api
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json"));

    // Reponse OK
    if (response.statusCode == 200){

      // Stocker les données de la réponse en Json
      var json = convert.jsonDecode(response.body);

      // Appeler le setState pour rafraichir la vue en même
      // temps que je met à jour les données
      setState(() {
        // Je convertis la liste des données JSON en Liste d'objet Tweet
        tweets = json.map((tweetJson) => Tweet.fromJson(tweetJson)).toList();

        log("Test");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Le bouton (qui a un padding et prend tout le place en largeur)
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () { onClickLoadTweet(); }, child: Text("Charger les tweets"))),
        ),
        // La liste des tweets
        Expanded(
          child: ListView.builder(
              itemCount: tweets.length,
              itemBuilder: (BuildContext context, int index) {
            return TwitterCard(tweets[index]);
          }),
        ),
      ],
    );
  }
}

