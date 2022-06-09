import 'package:flutter/material.dart';
import 'home/Home.dart';
import 'home/Category.dart';
import 'home/Setting.dart';
import 'home/Mine.dart';
 
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);
 
  _TabsState createState() => _TabsState();
}
 
class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List list = [HomePage(), CategoryPage(), SettingPage(), MinePage(),MinePage(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: this.list[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //默认选中位置
        currentIndex: this._currentIndex,
        //item 点击回调
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "我的"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "我的"),
        ],
        //图标大小
        iconSize: 26,
        //选中颜色
        fixedColor: Colors.red,
        //配置底部按钮多于3个
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}