import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text; //alt+enter,选择修复：构造函数这一行

  const MyButton(
      this.text, {
        Key? key,
      }) : super(key: key); //text是必须要传的参数，需要放在大括号外面，大括号里面的是可以传或者不传的参数
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      //流式按钮（按钮可以自动变化大小）
      child: Text(this.text), //接收text的参数
      textColor: Theme.of(context).accentColor, //按钮里的文本颜色自适应变化
      onPressed: () {}, //RaisedButton需要onPressed: () {  }语句监听命令的变化
    );
  }
}