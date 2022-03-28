import 'package:flutter/material.dart';
import 'package:folder/models/chat.dart';
import 'package:folder/styles/card.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

//This Screen Shows the List of Chats

class _ChatListState extends State<ChatList> {
  List<ChatModel> chats = [
    ChatModel(name: "Tron",time: '12:30', icon: 'person.svg', message: "Arivadache"),
  ChatModel(name: "Psam",time: '12:30', icon: 'person.svg', message: "Hola");
  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => MyCard()

        },

      ),
    );
  }
}