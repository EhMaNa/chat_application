import 'package:flutter/material.dart';
import 'package:folder/customImplements/card.dart';
import 'package:folder/customImplements/functions.dart';


//This Screen Shows the List of Chats
class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}
class _ChatListState extends State<ChatList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length - 1,
        itemBuilder: (context, index) => MyCard(chats[index + 1])
      )
    );
  }
}
