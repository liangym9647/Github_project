//第42讲内容，自定义时间DatetimePicker.dart
import "package:flutter/material.dart";
import 'package:github_project/Pages(English%20Version)/Color_Language_Change.dart';
import 'Pages(English Version)/Tabs.dart'; //引入BottomNavigationBar组件，底部三个导航条，并且实现点击后进行页面切换
//import Provider
import 'package:provider/provider.dart';
import 'Pages(English Version)/Color_Language_arguments.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var b = 7;
  var a = 2;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => Counter(),
          ), //https://pub.dev/packages/provider/example，
        ],
        child: MaterialApp(
          theme: new ThemeData(
            primarySwatch: Colors.yellow,
            brightness: Brightness.light,
          ),
          debugShowCheckedModeBanner:
              false, //remove the debug icon located on the top right of phone
          home: Scaffold(
            body:  Tabs()
                , //select language
          ),
        ));
  }
}
