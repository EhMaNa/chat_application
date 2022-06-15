import 'package:flutter/material.dart';
import 'package:folder/customImplements/contactCard.dart';
import 'package:folder/customImplements/myImplements.dart';

// Show Contacts Screen
class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){},
                child: ContactCard(chats[index]));
          })
    );
  }
}
