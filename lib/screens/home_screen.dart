import 'package:flutter/material.dart';
import 'package:folder/screens/chatList.dart';
import 'package:folder/screens/createGroup.dart';
import 'package:folder/screens/selectContact.dart';


class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHaT'),
        actions: [
          IconButton(icon: Icon(Icons.search_sharp), onPressed: (){},),
          PopupMenuButton(
              onSelected: (value){
                switch (value){
                  case "New group" : {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewGroup()));
                  }
                  break;
                  case "Settings" : {

                  }
                }

              },
              itemBuilder: (buildContext) {
            return [
              PopupMenuItem(child: Text('New group'), value: 'New group',),
              PopupMenuItem(child: Text('Settings'), value: 'Profile',)
            ];
          })
        ],
        bottom: TabBar(controller: _controller,
          tabs: [
            Tab(text: 'Chats',),
            Tab(text: 'Calls')
          ],),
      ),
      body: TabBarView(controller: _controller,
        children: [
          ChatList(),
          Center(child: Text('Calls'),),
        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage()));
        },
        tooltip: '',
        child: Icon(Icons.message_sharp),
      ),
    );
  }
}