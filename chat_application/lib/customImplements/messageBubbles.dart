import 'package:flutter/material.dart';

class MessageBubble extends StatefulWidget {
  MessageBubble({Key? key, required this.message, required this.type})
      : super(key: key);

  String message;
  int type;

  @override
  _MessageBubbleState createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: widget.type == 1
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Colors.lightBlueAccent,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                widget.message,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );

    /*Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
            child: Stack(
              children: [
                Text('Hello'),
                Row(
                  children: [
                    Text('12:30 AM'),
                    Icon(Icons.done_all)
                  ],
                ),
              ],
            )),
      ),
    );*/
  }
}
