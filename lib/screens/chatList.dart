import 'package:flutter/material.dart';
import 'package:folder/styles/card.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

//This Screen Shows the List of Chats

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MyCard(),
          MyCard()
        ],
      ),
    );
  }
}
