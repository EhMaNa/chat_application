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
        radius: 30,
      ),
      title: Text('Checking', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          Text('fa wo gyimie ko', style: TextStyle(
            fontSize: 13,
          ),),
          SizedBox(width: 3,)
        ],
      ),
      trailing: Text('20:48'),
    );
  }
}
