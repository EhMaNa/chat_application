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
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
                radius: 20,
                child: SvgPicture.asset(
                  widget.chatModel.inGroup
                      ? 'svg/person_black_36dp.svg'
                      : 'svg/group_black_36dp.svg',
                  color: Colors.white,
                  height: 30,
                  width: 30,
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(),
                ),
                Text(
                  "online",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (buildContext) {
                return [
                  PopupMenuItem(
                    child: Text('New group'),
                    value: 'New group',
                  ),
                  PopupMenuItem(
                    child: Text('Broadcast'),
                    value: 'Broadcast',
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                    value: 'Settings',
                  )
                ];
              })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    child: Card(
                        child: TextFormField()),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
