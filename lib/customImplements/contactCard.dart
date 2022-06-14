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
        leading: CircleAvatar(
          radius: 23,
          child: SvgPicture.asset(chatModel.name == 'New group' ? 'svg/group_black_36dp.svg' : 'svg/person_black_36dp.svg',
          color: Colors.white,
          height: 30,
          width: 30,),
          backgroundColor: Colors.blueGrey,
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
