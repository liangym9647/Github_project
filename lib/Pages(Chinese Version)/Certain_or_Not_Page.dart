import 'package:flutter/material.dart';
import 'Color_Language_Change.dart';
import 'package:github_project/main.dart';
class CertainPage extends StatefulWidget {

  var arguments;

  CertainPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _CertainPageState createState() => _CertainPageState(this.arguments);
}

class _CertainPageState extends State<CertainPage> {
  _CertainPageState(arguments);
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('警告 !'),
      content: Text('你确定选择吗 ?'),
      backgroundColor: Colors.lightBlueAccent,
      elevation: 24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      actions: <Widget>[
        FlatButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.pop(context); //出栈，返回至上一次，当触发对应按钮后，让result接收context的值
          },
        ),
        FlatButton(
            child: Text('确定'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context, {arguments}) => MyApp(
                      arguments:
                      widget.arguments)) //(arguments=1)=>main.dart
              );
            } //出栈，返回至上一次，当触发对应按钮后，让result接收context的值
            ),
      ],
    );
  }
}

CertainPage p=CertainPage(arguments: 3);
int a=p.arguments;