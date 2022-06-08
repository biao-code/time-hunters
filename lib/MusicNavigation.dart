import 'package:flutter/material.dart';

/*
* 音乐界面,相当于fragment
*/
//该界面创建有状态的组件
class MusicPage extends StatefulWidget {
  @override
  //状态
  PlaygroundState createState() => new PlaygroundState();
}

class PlaygroundState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    //MaterialApp-Scaffold
    return new MaterialApp(
      //Scaffold相当于布局的容器
      home: new Scaffold(
        //appBar是状态栏
        appBar: new AppBar(
          //设置文字
          title: new Text("音乐"),
          //设置appbar背景颜色
          backgroundColor: Color.fromARGB(255, 119, 136, 213),
          //设置标题是否局中
          centerTitle: true,
        ),
        //body就是写界面了
        body: new Center(
          child: new Text('音乐'),
        ),
      ),
    );
  }
}
