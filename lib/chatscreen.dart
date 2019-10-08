import 'package:chat/chatmessage.dart';
import 'package:flutter/material.dart';
import 'chatmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _text = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  void _handlesubmit(String t) {
    _text.clear();
    ChatMessage message = new ChatMessage(
      textt: t,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return Center(
      child: new Container(
        color: Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    height: 1),
                decoration: new InputDecoration(
                  hintText: "Send a Message",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontStyle: FontStyle.italic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: _text,
                onSubmitted: _handlesubmit,
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  color: Colors.blueAccent,
                  onPressed: () => _handlesubmit(_text.text)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(
          height: 1,
        ),
        new Container(
          margin: const EdgeInsets.only(bottom: 15),
          decoration: new BoxDecoration(color: Colors.transparent),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
