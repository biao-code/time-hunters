import 'package:flutter/material.dart';
 
class MinePage extends StatefulWidget {
  MinePage({Key? key}) : super(key: key);
 
  _MinePageState createState() => _MinePageState();
}
 
class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的",style: TextStyle(
        fontSize: 20,
        color: Colors.red
      ),),
    );
  }
}