import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

/*
var showPasswordButton = IconButton(
  icon: Icon(
    // Based on passwordVisible state choose the icon
    _passwordVisible
        ? Icons.visibility
        : Icons.visibility_off,
    color: Theme.of(context).primaryColorDark,
  ),
  onPressed: () {
    // Update the state i.e. toogle the state of passwordVisible variable
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  },
);
*/

class TwitterLoginForm extends StatefulWidget {
  @override
  State<TwitterLoginForm> createState() => _TwitterLoginFormState();
}

class _TwitterLoginFormState extends State<TwitterLoginForm> {
  // La clé du formulaire (pour pouvoir le manipuler)
  final _formKey = GlobalKey<FormState>();

  bool switchValue = false;

  // Pour savoir si j'affiche ou pas le mot de passe dans le champ
  bool hidePassword = true;

  /**
   * Valider l'email
   */
  String? validateEmail(String? value) {
    // Si l'email n'est pas valide
    if (!EmailValidator.validate(value!)) {
      return "Email invalide";
    }
    return null;
  }

  /**
   * Valider le mot de passe
   */
  String? validatePassword(String? value) {
    // Erreur 1 : Si vide
    if (value!.isEmpty) {
      return "Le mot de passe doit être renseigné";
    }
    // Erreur 2 : Si < 6
    if (value!.length < 6) {
      return "Le mot de passe doit contenir au moins 6 caractères";
    }

    return null;
  }

  /**
   * Afficher la boite de dialogue pour informer la connexion
   */
  void showLoginSuccessDialog() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Connexion'),
              content: const Text('Vous êtes connecté(e) avec succès !'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ));
  }

  /**
   * Traitement du formulaire
   */
  void onSubmit() {
    // j'appel la validation du formulaire
    if (_formKey.currentState!.validate()){
      showLoginSuccessDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Connexion à Twitter",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ),
              // Email
              TextFormField(
                validator: validateEmail,
                decoration: InputDecoration(hintText: "Identifiant"),
              ),
              // Mot de passe
              TextFormField(
                obscureText: hidePassword,
                validator: validatePassword,
                decoration: InputDecoration(
                    hintText: "Mot de passe",
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    )),
              ),
              Row(
                children: [
                  Switch(
                      value: switchValue,
                      onChanged: (bool value) {
                        setState(() {
                          switchValue = value;
                        });
                      }),
                  Text("Mémoriser mes informations",
                      style: TextStyle(color: Colors.black54))
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        onSubmit();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Connexion"),
                      )))
            ],
          )),
    );
  }
}
