import 'package:flutter/material.dart';
import 'package:folder/customImplements/contactCard.dart';
import 'package:folder/customImplements/myImplements.dart';
import 'package:folder/screens/chatPage.dart';
import 'package:folder/screens/createGroup.dart';

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
          title: Text(
            'Select Contact',
          ),
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
                  onTap: () {
                    index != 0
                        ? Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatPage(chats[index])))
                        : Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewGroup()));
                  },
                  child: ContactCard(chats[index], 'Contact'));
            }));
  }
}
