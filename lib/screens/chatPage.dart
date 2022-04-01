import 'package:flutter/material.dart';
import 'package:folder/models/chatModel.dart';

class ChatPage extends StatefulWidget {
  /*const ChatPage(this.chatModel);
  final ChatModel chatModel;*/

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5,),
            CircleAvatar(
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
