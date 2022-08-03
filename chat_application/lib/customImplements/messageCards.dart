import 'package:flutter/material.dart';

class SendCard extends StatefulWidget {
  const SendCard({Key? key}) : super(key: key);

  @override
  _SendCardState createState() => _SendCardState();
}

class _SendCardState extends State<SendCard> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 45,
      ),
      child: Card(
          child: Stack(
            children: [
              Text('Hello'),
              Row(
                children: [
                  Text('Hello'),
                ],
              ),
            ],
          )),
    );
  }
}
