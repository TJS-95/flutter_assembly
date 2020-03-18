import 'package:flutter/material.dart';

void main() => runApp(MyApp());
const CITY_NAMES = [ '北京', '上海', '广州', '深圳', '杭州', '苏州', '成都', '武汉', '郑州', '洛阳', '厦门', '青岛', '拉萨' ];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('组件使用'),
        ),
        body: Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildList(),
          ),
        )
      ),
    );
  }
  List<Widget> _buildList() {
    return CITY_NAMES.map((city) => _item(city)).toList();
  }
  Widget _item(city) {
    return Container(
      width: 160,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(
        city,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

