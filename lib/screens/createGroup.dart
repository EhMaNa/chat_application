import 'package:flutter/material.dart';
import 'package:folder/customImplements/contactCard.dart';
import 'package:folder/customImplements/myImplements.dart';

class NewGroup extends StatefulWidget {


  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Contact',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),),
          actions: [
            IconButton(
              icon: Icon(Icons.search_sharp),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) => ContactCard(chats[index]))
    );
  }
}
