import 'package:flutter/material.dart';

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
              onSelected: (value){},
              itemBuilder: (buildContext) {
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