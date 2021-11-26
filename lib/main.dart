//第42讲内容，自定义时间DatetimePicker.dart
import "package:flutter/material.dart";
import 'Pages/Tabs.dart'; //引入BottomNavigationBar组件，底部三个导航条，并且实现点击后进行页面切换
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉演示手机上右上角的debug标签
      home: Tabs(), //home界面为Tabs类，Tabs类在左边tabs文件夹的Tabs里面
    );
  }
}


