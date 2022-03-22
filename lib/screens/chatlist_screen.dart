import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {


  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> with SingleTickerProviderStateMixin{
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
          IconButton(icon: Icon(Icons.more_vert_sharp), onPressed: (){},),
          PopupMenuButton(itemBuilder: (BuildContext) {
            return [
              PopupMenuItem(child: Text('New group'), value: 'New group',),
              PopupMenuItem(child: Text('Broadcast'), value: 'Broadcast',),
              PopupMenuItem(child: Text('Settings'), value: 'Settings',)
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
          Center(child: Text('Chats'),),
          Center(child: Text('Calls'),),
        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.message_sharp),
      ),
    );
  }
}