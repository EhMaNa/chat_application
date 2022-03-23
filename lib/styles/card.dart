import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
      ),
      title: Text('Checking', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),),
      subtitle: Text('fa wo gyimie ko', style: TextStyle(
        fontSize: 13,
        fontWeight: ,
      ),),
      trailing: Text('20:48'),
    );
  }
}
