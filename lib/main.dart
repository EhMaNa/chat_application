import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHaT',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "OpenSans"
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        //'/contact' : (context) => ContactPage()
      },
    );
  }
}


