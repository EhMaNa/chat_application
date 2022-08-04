import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendBubble extends StatefulWidget {
  const SendBubble({Key? key}) : super(key: key);

  @override
  _SendBubbleState createState() => _SendBubbleState();
}

class _SendBubbleState extends State<SendBubble> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadiusDirectional.circular(30),
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text('Hello',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0
              ),),
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
