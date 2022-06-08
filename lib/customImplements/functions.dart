import 'dart:math';
import 'package:flutter/material.dart';
import 'package:folder/models/chatModel.dart';

// Contains some custom functions and refactored widgets

Color generateColor (){
  int random = Random().nextInt(8);
    Map colors = {
      '0' : Colors.pink,
      '1': Colors.blueAccent,
      '2': Colors.orange,
      '3': Colors.teal,
      '4': Colors.purple,
      '5': Colors.brown,
      '6': Colors.red,
      '7': Colors.grey,
    };

  return colors['$random'];
}

List<ChatModel> chats = [
  ChatModel(name: "New group",time: '', icon: 'person.svg', message: "", inGroup: true),
  ChatModel(name: "Tron",time: '12:30 AM', icon: 'person.svg', message: "Arivadache", inGroup: false),
  ChatModel(name: "Psam",time: '1:39 PM', icon: 'person.svg', message: "Hola", inGroup: true),
];