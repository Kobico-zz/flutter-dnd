import 'package:flutter/material.dart';
import 'package:pocApp/widgets/home-page/home-page.widget.dart';

//import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Drag & Drop',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Demo for Flutter drag and drop'),
    );
  }
}


