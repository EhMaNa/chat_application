import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:folder/customImplements/messageBubbles.dart';
import 'package:folder/models/chatModel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folder/customImplements/myImplements.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

// Individual Chat Screen
class ChatPage extends StatefulWidget {
  const ChatPage(this.chatModel);

  final ChatModel chatModel;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool showEmoji = false;
  bool showSendButton = false;
  FocusNode focus = FocusNode();
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connect();
    focus.addListener(() {
      if (focus.hasFocus) {
        setState(() {
          showEmoji = false;
        });
      }
    });
  }

  void connect() {
    /*IO.Socket socket = IO.io('https', <String, dynamic> {
      "transports" : ["websocket"],
      "autoConnect" : false
    }
      //OptionBuilder().setTransports(['websocket'])
    );
    socket.connect();
    socket.onConnect((data) => print('I  am working')); */
    IO.Socket socket = IO.io(
        'http://localhost:3000',
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .disableAutoConnect() // disable auto-connection
            .build());
    socket.connect();
    socket.emit("/test", "Hello World");
    socket.onConnect((data) => print('I  am working'));
    print(socket.connected);
  }

  Widget emojiSelector() {
    return EmojiPicker(
      onEmojiSelected: (category, emoji) {
        print(emoji);
        setState(() {
          _controller.text = _controller.text + emoji.emoji;
        });
      },
      config: Config(
        columns: 7,
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      height: 270,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                attachFileIcons(
                    Icons.insert_drive_file, generateColor(), "File"),
                SizedBox(
                  width: 40,
                ),
                attachFileIcons(Icons.insert_photo, generateColor(), "Gallery"),
                SizedBox(
                  width: 40,
                ),
                attachFileIcons(Icons.camera_alt, generateColor(), "Camera"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                attachFileIcons(Icons.headphones, generateColor(), "Audio"),
                SizedBox(
                  width: 40,
                ),
                attachFileIcons(Icons.person, generateColor(), "Contact"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget attachFileIcons(IconData icon, Color color, String name) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (showEmoji) {
          setState(() {
            showEmoji = false;
          });
        } else {
          Navigator.pop(context);
        }
        return Future.value(false);
      },
      child: Stack(
        children: [
          Image.asset(
            'images/backgroundW.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
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
                        backgroundColor: Colors.blueGrey[200],
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
                      ListView(
                        //reverse: true,
                        //shrinkWrap: true,
                        children: [SendBubble()],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                      margin: EdgeInsets.only(
                                          left: 2, right: 2, bottom: 2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: TextFormField(
                                        controller: _controller,
                                        focusNode: focus,
                                        maxLines: 5,
                                        minLines: 1,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        keyboardType: TextInputType.multiline,
                                        onChanged: (value) {},
                                        decoration: InputDecoration(
                                            prefixIcon: IconButton(
                                                onPressed: () {
                                                  focus.unfocus();
                                                  focus.canRequestFocus = false;
                                                  setState(() {
                                                    showEmoji = !showEmoji;
                                                  });
                                                },
                                                icon: Icon(Icons
                                                    .emoji_emotions_outlined)),
                                            suffixIcon: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      showModalBottomSheet(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder:
                                                              buildBottomSheet);
                                                    },
                                                    icon: Icon(Icons
                                                        .attach_file_outlined)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .settings_voice_outlined)),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                            contentPadding: EdgeInsets.all(5),
                                            hintText: 'Type your message here'),
                                      )),
                                ),
                              ],
                            ),
                            showEmoji ? emojiSelector() : Container(),
                          ],
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
