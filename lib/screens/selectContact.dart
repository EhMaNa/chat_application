import 'package:flutter/material.dart';
import 'package:folder/styles/contactCard.dart';



class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ContactCard(),
        ],
      ),
    );
  }
}
