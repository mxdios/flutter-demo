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
  MyAppBar({this.titleStr, this.leftIcon, this.rightIcon});
  
  final String titleStr;
  final IconData leftIcon;
  final IconData rightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(top:30),
      color: Colors.red,
      child: Row(
        children: <Widget> [
          IconButton(
            icon: Icon(leftIcon, color: Colors.white,),
            onPressed: null,
          ),
          Expanded(
            child: Text(
              titleStr,
              style: Theme.of(context).primaryTextTheme.title,
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: Icon(rightIcon, color: Colors.white,),
            onPressed: null,
          ),
        ]
      ),
    );
  }
}

class MyContent extends StatelessWidget {
  MyContent({this.contentStr});
  final String contentStr;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          contentStr,
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
          ),
        ),
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
          MyAppBar(titleStr: 'Hello World', leftIcon: Icons.menu, rightIcon: Icons.track_changes),
          MyContent(contentStr: 'Hello Flutter'),
        ],
      ),
    );
  }
}