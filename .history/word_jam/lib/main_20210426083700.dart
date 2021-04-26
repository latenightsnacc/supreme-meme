import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StateLessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('WordJam')),
      )
    )
  }
}