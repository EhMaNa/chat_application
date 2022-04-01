import 'package:flutter/material.dart';
import 'package:folder/models/chatModel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatefulWidget {
  const ChatPage(this.chatModel);
  final ChatModel chatModel;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5,),
            CircleAvatar(
              radius: 20,
              child: SvgPicture.asset(widget.chatModel.inGroup ? 'svg/person_black_36dp.svg' : 'svg/group_black_36dp.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              )
            ),
          ],
        ),
      ),
    );
  }
}
