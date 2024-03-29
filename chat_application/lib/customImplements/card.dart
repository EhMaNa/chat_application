import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folder/models/chatModel.dart';
import 'package:folder/screens/chatPage.dart';

class MyCard extends StatefulWidget {
  final ChatModel chatModel;
  const MyCard(this.chatModel);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatPage(widget.chatModel)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                widget.chatModel.inGroup
                    ? 'assets/svg/person_black_36dp.svg'
                    : 'assets/svg/group_black_36dp.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              widget.chatModel.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 2,
                ),
                Text(
                  widget.chatModel.message,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: 3,
                )
              ],
            ),
            trailing: Text(widget.chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
