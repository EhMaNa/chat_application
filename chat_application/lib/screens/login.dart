import 'package:flutter/material.dart';
import 'package:folder/customImplements/myImplements.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person,
              size: 25,
            ),
            title: Text(
              chats[1].name,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    ));
  }
}
