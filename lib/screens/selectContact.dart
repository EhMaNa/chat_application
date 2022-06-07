import 'package:flutter/material.dart';
import 'package:folder/customImplements/contactCard.dart';


// Show Contacts Screen
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
          fontSize: 15
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) => ContactCard())
    );
  }
}
