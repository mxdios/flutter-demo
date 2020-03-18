import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStateless(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(top:30),
      color: Colors.red,
      child: Row(
        children: <Widget> [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.track_changes, color: Colors.white,),
            onPressed: null,
          ),
        ]
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'hello world',
              style: Theme.of(context).primaryTextTheme.title,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, flutter'),
            ),
          ),
        ],
      ),
    );
  }
}