import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
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
