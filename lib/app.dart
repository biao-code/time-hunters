import 'package:flutter/material.dart';
import 'SettingNavigation.dart';
import 'SquareNavigation.dart';
import 'MusicNavigation.dart';
/*
* 主界面
*/

//继承于一个有状态的组件,状态会在widget的生命周期中发生变化;如果是无状态的组件,里面的值不可变
class MusicPlayer extends StatefulWidget {
  @override
  //创建状态,在状态里面写布局
  MusicPlayerState createState() => new MusicPlayerState();
}

class MusicPlayerState extends State<MusicPlayer> with SingleTickerProviderStateMixin {
  //导航控制器
  late TabController controller;

  @override
  void initState() {
    //初始化,底部的三个导航按键
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    //销毁
    controller.dispose();
    super.dispose();
  }

  //Widget用于构建UI
  @override
  Widget build(BuildContext context) {
    //写法是:返回的东西是什么什么什么什么,MaterialApp包含了许多Widget
    return new MaterialApp(
      //Scaffold相当于布局的容器
      home: new Scaffold(
        //body是Scaffold的属性,当前界面所显示的主要内容
        body: new TabBarView(
          //内容三个按键对应的三个fragment
          controller: controller,
          children: <Widget>[
            new MusicPage(),
            new SquarePage(),
            new SettingPage(),
          ],
        ),
        //bottomNavigationBar:显示在底部的导航栏按钮栏
        bottomNavigationBar: new Material(
          color: Colors.white,
          child: new TabBar(
            controller: controller,
            //选中标签时的颜色
            labelColor: Colors.deepPurpleAccent,
            //没有选中标签时的颜色
            unselectedLabelColor: Colors.black26,
            //tabs也可以认为是一个Widget
            tabs: <Widget>[
              new Tab(
                text: "音乐",
                icon: new Icon(Icons.brightness_5),
              ),
              new Tab(
                text: "广场",
                icon: new Icon(Icons.map),
              ),
              new Tab(
                text: "设定",
                icon: new Icon(Icons.directions_run),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
