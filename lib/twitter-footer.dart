import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class TwitterFooterButton extends StatelessWidget {

  bool active;
  String label;

  TwitterFooterButton(this.label, {this.active=false});

  Color getActiveColor(){
    return active ? Color(0xFF58B0F0) : Colors.black54;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(label, style: TextStyle(color: getActiveColor()), textAlign: TextAlign.center,));
  }
}

class TwitterFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          TwitterFooterButton('label.thread'.i18n(), active: true,),
          TwitterFooterButton('label.notification'.i18n()),
          TwitterFooterButton('label.messages'.i18n()),
          TwitterFooterButton('label.me'.i18n()),
        ],
      ),
    );
  }
}