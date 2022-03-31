import 'package:flutter/material.dart';
import 'package:folder/models/chatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage(this.chatModel);
  final ChatModel chatModel;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
    );
  }
}
