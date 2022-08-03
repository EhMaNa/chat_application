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
        maxHeight: MediaQuery.of(context).size.height
      ),
    );
  }
}
