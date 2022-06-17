import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folder/models/chatModel.dart';

class ContactCard extends StatelessWidget {
  final ChatModel chatModel;
  const ContactCard(this.chatModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3.0, 4.0, 0.0, 4.0),
      child: ListTile(
        leading: Container(
          height: 53,
          width: 50,
          child: Stack(
            children: [
              chatModel.name == 'New group' ? CircleAvatar(
                radius: 23,
                child: SvgPicture.asset('svg/group_black_36dp.svg',
                color: Colors.white,
                height: 30,
                width: 30,),
                backgroundColor: Colors.blue,
              ) : CircleAvatar(
                radius: 23,
                child: SvgPicture.asset('svg/person_black_36dp.svg',
                  color: Colors.white,
                  height: 30,
                  width: 30,),
                backgroundColor: Colors.blueGrey[200],
              ),
              chatModel.select ? Positioned(
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
              ) : Container()
            ],
          ),
        ),
        title: Text(chatModel.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
