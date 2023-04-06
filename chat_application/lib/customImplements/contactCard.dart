import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folder/models/chatModel.dart';

class ContactCard extends StatelessWidget {
  final ChatModel chatModel;
  final String type;

  const ContactCard(this.chatModel, this.type);

  @override
  Widget build(BuildContext context) {
    return type == 'Contact'
        ? Padding(
            padding: const EdgeInsets.fromLTRB(3.0, 4.0, 0.0, 4.0),
            child: ListTile(
              leading: Container(
                height: 53,
                width: 50,
                child: Stack(
                  children: [
                    chatModel.name == 'New group'
                        ? CircleAvatar(
                            radius: 23,
                            child: SvgPicture.asset(
                              'assets/svg/group_black_36dp.svg',
                              color: Colors.white,
                              height: 30,
                              width: 30,
                            ),
                            backgroundColor: Colors.blue,
                          )
                        : CircleAvatar(
                            radius: 23,
                            child: SvgPicture.asset(
                              'assets/svg/person_black_36dp.svg',
                              color: Colors.white,
                              height: 30,
                              width: 30,
                            ),
                            backgroundColor: Colors.blueGrey[200],
                          ),
                    chatModel.select
                        ? Positioned(
                            bottom: 4,
                            right: 5,
                            child: CircleAvatar(
                              backgroundColor: Colors.teal,
                              radius: 11,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
              title: Text(
                chatModel.name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 23,
                      child: SvgPicture.asset(
                        'assets/svg/group_black_36dp.svg',
                        color: Colors.white,
                        height: 30,
                        width: 30,
                      ),
                      backgroundColor: Colors.blueGrey[200],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 11,
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  chatModel.name,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          );
  }
}
