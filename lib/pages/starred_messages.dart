import 'package:flutter/material.dart';

class StarredMessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starred Messages'),
      ),
      body: Center(
        child: Text('This is the Starred Messages page. You can edit this as needed.'),
      ),
    );
  }
}