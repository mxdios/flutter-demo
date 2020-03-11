// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final name = WordPair.random();
    return MaterialApp(
      home: RandomWorld()
    );
  }
}

class RandomWorld extends StatefulWidget {
  @override
  WorldState createState() => WorldState();
}

//创建一个State类
class WorldState extends State<RandomWorld> {
  final _worldArray = <WordPair>[];
  final _fontStyle = const TextStyle(fontSize: 10.0,);

  Widget _listView() {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return Divider();
        }
        final index = i ~/ 2;
        if (index >= _worldArray.length) {
          _worldArray.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_worldArray[index]);
      }
    );
  }

  Widget _buildRow(WordPair name) {
    return ListTile(
      title: Text(
        name.asPascalCase,
        style: _fontStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Home'),
      ),
      body: _listView(),
    );
  }

}