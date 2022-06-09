//导入了Material UI组件库 ,快捷操作fim
import 'package:flutter/material.dart';
 
import 'views/Tabs.dart';
 
void main() {
  runApp(MyApp());
}
 
//自定义组件
//StatelessWidget:无状态组件，状态不可变的widget
//StatefulWidget:有状态组件，状态可以改变
//fluter中一切都是组件
//使用MaterialApp和Scaffold 两个组件装饰App
//MaterialApp一般作为根组件----home、title、color、theme、routes等
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }
}