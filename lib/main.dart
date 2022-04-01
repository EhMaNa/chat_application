import 'package:flutter/material.dart';
import 'package:folder/screens/chatPage.dart';
import 'screens/home_screen.dart';
import 'package:folder/models/chatModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  //late final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHaT',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "OpenSans"
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/chat' : (context) => ChatPage(/*chatModel*/)
      },
    );
  }
}


