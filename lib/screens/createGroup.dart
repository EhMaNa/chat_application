import 'package:flutter/material.dart';
import 'package:folder/customImplements/contactCard.dart';
import 'package:folder/customImplements/myImplements.dart';
import 'package:folder/models/chatModel.dart';

class NewGroup extends StatefulWidget {
  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Members',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: chats.length - 1,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  if (chats[index + 1].select == false){
                    setState(() {
                      chats[index + 1].select = true;
                      groups.add(chats[index + 1]);
                    });
                  } else {
                    setState(() {
                      chats[index + 1].select = false;
                      groups.remove(chats[index + 1]);
                    });
                  }
                },
                  child: ContactCard(chats[index + 1]));
            })
    );
  }
}
