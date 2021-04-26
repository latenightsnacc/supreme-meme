import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _randomWordPairs = <WordPair>[];
  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, item) {
          // add a divider after every odd index item
          if (item.isOdd) return Divider();

          // Find the total count of items generated without the divider
          final index = item ~/ 2;

          // generate more word pairs when we get to the end (infinite scrolling)
          if (index >= _randomWordPairs.length) {
            _randomWordPairs.addAll(generateWordPairs().take(10));
          }

          // returns the list tile for each item
          return _buildRow(_randomWordPairs[index]);
        });
  }

// creates the list tile widget for each list item
  Widget _buildRow(WordPair pair) {
    return ListTile(title: Text('Hello world'));
  }

// app widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Word Jam'))),
      body: _buildList(),
    );
  }
}
