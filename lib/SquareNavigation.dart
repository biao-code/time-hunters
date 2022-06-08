import 'package:flutter/material.dart';

/*
*广场界面,相当于fragment
*/
class SquarePage extends StatefulWidget {
  @override
  PlaygroundState createState() => new PlaygroundState();
}

class PlaygroundState extends State<SquarePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("广场"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('广场'),
        ),
      ),
    );
  }
}
