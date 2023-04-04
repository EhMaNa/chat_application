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
          title: Text(
            'Add Members',
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      height: groups.length > 0 ? 90 : 10,
                    );
                  }
                  return InkWell(
                      onTap: () {
                        if (chats[index].select == false) {
                          setState(() {
                            chats[index].select = true;
                            groups.add(chats[index]);
                          });
                        } else {
                          setState(() {
                            chats[index].select = false;
                            groups.remove(chats[index]);
                          });
                        }
                      },
                      child: ContactCard(chats[index], 'Contact'));
                }),
            groups.length > 0
                ? Column(
                    children: [
                      Container(
                        height: 78,
                        color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: chats.length - 1,
                            itemBuilder: (context, index) {
                              if (chats[index + 1].select == true) {
                                return InkWell(
                                    onTap: () {
                                      setState(() {
                                        groups.remove(chats[index + 1]);
                                        chats[index + 1].select = false;
                                      });
                                    },
                                    child: ContactCard(chats[index + 1], ''));
                              } else {
                                return Container();
                              }
                            }),
                      ),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  )
                : Container(),
          ],
        ));
  }
}
