import 'package:flutter/material.dart';
 
class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);
 
  _SettingPageState createState() => _SettingPageState();
}
 
class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("设置",style: TextStyle(
        fontSize: 20,
        color: Colors.red
      ),),
    );
  }
}