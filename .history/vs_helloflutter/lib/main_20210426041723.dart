import 'dart:html';

import 'package:flutter/material.dart';
import 'dart.html';

// Main Function
void main() => runApp(MyApp());

// Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('WordJam'))));
  }
}
