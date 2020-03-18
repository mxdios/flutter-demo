import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ChangedText(),
    );
  }
}

class ChangedText extends StatefulWidget {
  @override
  _ChangedTextState createState() => _ChangedTextState();
}

class _ChangedTextState extends State<ChangedText> {
  int index = 0;
  String text = 'hello wrold';
  bool textBool = true;
  _textBtnClik() {  
    setState(() {
      index ++;
      textBool = !textBool;
    });
  }
  _viewShow() {
    if (textBool) {
      return Text(text);
    } else {
      return Text('$index');
    }
  }
  Widget _changedTextView() {
    return Center(
      child: 
      Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _viewShow(),
          FlatButton(
            color: Colors.blue,
            padding: EdgeInsets.only(top:10,bottom: 10, left: 60, right: 60),
            child: Text('Btn'),
            onPressed: _textBtnClik, 
          ),
        ],
      ),
    ); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: _changedTextView()
    );
  }
}
