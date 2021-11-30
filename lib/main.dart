//第42讲内容，自定义时间DatetimePicker.dart
import "package:flutter/material.dart";
import 'package:github_project/Pages(English%20Version)/Color_Language_Change.dart';
import 'Pages(English Version)/Tabs.dart'; //引入BottomNavigationBar组件，底部三个导航条，并且实现点击后进行页面切换
//import Provider
import 'package:provider/provider.dart';
import 'Pages(English Version)/Color_Language_arguments.dart';
import 'Pages(Chinese Version)/Color_Language_arguments.dart';
import 'Pages(Chinese Version)/Tabs_Chinese.dart';

void main() {
  return runApp(MyApp(
    arguments: null,
  ));
}

class MyApp extends StatefulWidget {
  var arguments;
  MyApp({Key? key, required this.arguments}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var a;
    var b;
    if (widget.arguments == null) {
      a = 1;
      b = 3;
    } else {
      a = widget.arguments[0]; //1 white, 2 black
      b = widget.arguments[1]; //3 English, 4 Chinese
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        ), //https://pub.dev/packages/provider/example，
        ChangeNotifierProvider(
          create: (_) => Counter_Chinese(),
        ),
      ],
      child: MaterialApp(

        theme: ThemeData(
          brightness: a == 1 ? Brightness.light : Brightness.dark, //day mode or night mode
        ),

        debugShowCheckedModeBanner:
            false, //remove the debug icon located on the top right of phone
        home: Scaffold(
          body: b == 3 ? Tabs() : Tabs_Chinese(),
        ),
      ),
    );
  }
}
