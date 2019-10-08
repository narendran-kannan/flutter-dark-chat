import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String textt;
  ChatMessage({this.textt});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16),
            child: new CircleAvatar(child: new Text("N")),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Narendran", style: TextStyle(color: Colors.white)),
              new Container(
                margin: const EdgeInsets.only(top: 5),
                child: new Text(
                  textt,
                  style: TextStyle(color: Colors.white70),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
