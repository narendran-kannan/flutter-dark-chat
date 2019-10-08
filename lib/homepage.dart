import 'package:flutter/material.dart';
import 'chatscreen.dart';
import 'chatmessage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(),
      appBar: new AppBar(
        title: new Text('Dark Chat Theme'),
        backgroundColor: Color.fromRGBO(31, 31, 31, 1),
      ),
      body: new ChatScreen(),
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
    );
  }
}
