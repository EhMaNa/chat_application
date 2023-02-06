import 'package:flutter/material.dart';
import 'package:folder/customImplements/myImplements.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25,
                ),
                title: Text(
                  chats[1].name,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, '/home'),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25,
                ),
                title: Text(
                  chats[2].name,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
