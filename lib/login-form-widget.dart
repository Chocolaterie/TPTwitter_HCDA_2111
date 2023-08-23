import 'package:flutter/material.dart';

class TwitterLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Connexion à Twitter",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Identifiant"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Mot de passe"),
          ),
          Row(
            children: [
              Switch(value: false, onChanged: (bool value) {}),
              Text("Mémoriser mes informations",
                  style: TextStyle(color: Colors.black54))
            ],
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Connexion"),
              )))
        ],
      )),
    );
  }
}
