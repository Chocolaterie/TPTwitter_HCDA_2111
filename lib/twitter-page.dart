import 'package:flutter/material.dart';
import 'package:tp_twitter/twitter-content.dart';
import 'package:tp_twitter/twitter-footer.dart';
import 'package:tp_twitter/twitter-header.dart';

class TwitterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Header
          TwitterHeader(),
          // Content
          Expanded(child: TwitterContent()),
          // Footer
          TwitterFooter(),
        ],
      ),
    );
  }

}