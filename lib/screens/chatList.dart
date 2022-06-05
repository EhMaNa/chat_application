import 'package:flutter/material.dart';
import 'package:folder/models/chatModel.dart';
import 'package:folder/customFiles/card.dart';


//This Screen Shows the List of Chats
class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}
class _ChatListState extends State<ChatList> {
  List<ChatModel> chats = [
    ChatModel(name: "Tron",time: '12:30 AM', icon: 'person.svg', message: "Arivadache", inGroup: false),
  ChatModel(name: "Psam",time: '1:39 PM', icon: 'person.svg', message: "Hola", inGroup: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => MyCard(chats[index])
      )
    );
  }
}
