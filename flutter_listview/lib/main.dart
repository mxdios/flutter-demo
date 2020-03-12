import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.dark(),
      // theme: new ThemeData(
      //   primaryColor: Colors.white
      // ),
      home: WordRandom(),
    );
  }
}

class WordRandom extends StatefulWidget {
  @override
  _WordRandomState createState() => _WordRandomState();
}

class _WordRandomState extends State<WordRandom> {
  final List<WordPair>_nameArray = <WordPair>[];
  final Set<WordPair>_likeNameArray = Set<WordPair>(); //收藏数据

  Widget _listView() {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _nameArray.length) {
          _nameArray.addAll(generateWordPairs().take(10));
        }
        return _cellView(_nameArray[index]);
      }
    );
  }

  Widget _cellView(WordPair name) {
    final bool isLike = _likeNameArray.contains(name); //是否收藏了
    return ListTile(
      title: Text(
        name.asPascalCase
      ),
      trailing: Icon( //添加心形收藏按钮
        isLike ? Icons.favorite : Icons.favorite_border,
        color: isLike ? Colors.red : null,
      ),
      onTap: () {//收藏按钮点击事件
        setState(() {
          if (isLike) {
            _likeNameArray.remove(name);//移除收藏
          } else {
            _likeNameArray.add(name);//收藏
          }
        });
      },
    );
  }

  void _pushVc() {
    Navigator.push(context, 
      new MaterialPageRoute(
        builder: (contex) {
          final Iterable<ListTile> tiles = _likeNameArray.map(
            (WordPair name) {
              return new ListTile (
                title: Text(
                  name.asPascalCase
                ),
              );
            },
          );
          final List<Widget> divided = ListTile
          .divideTiles(
            context: context,
            tiles: tiles,
          )
          .toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('like'),
            ),
            body: ListView(children: divided),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        actions: [
          new IconButton(icon: Icon(Icons.list), onPressed: _pushVc),
        ],
      ),
      body: _listView(),
    );
  }
}