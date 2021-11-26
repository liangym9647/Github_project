import 'package:flutter/material.dart';
class TextFieldDemoPage extends StatefulWidget {
  const TextFieldDemoPage({Key? key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Something New"),
      ),
      body: Padding( //填充
        padding: EdgeInsets.all(20), //四周留20空隙
        child: Column( //列
          children: <Widget>[
            TextField(), //表单，点击表单可以输入内容，弹出键盘
            SizedBox(height: 2,),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入搜索的内容" ,//表单，输入栏上会出现灰色的暗示文字，输入文字是原先的文字会消失
                border:OutlineInputBorder(),//输入栏四周出现边框
              ),
            ),
            TextField(
              maxLines: 3,//输入框宽度为3行
              decoration: InputDecoration(
                hintText: "多行文本框" ,//表单，输入栏上会出现灰色的暗示文字，输入文字是原先的文字会消失
                border:OutlineInputBorder(),//输入栏四周出现边框
              ),
            ),
            SizedBox(height: 1,),
            TextField(
              obscureText: true, //密码框，即输入文本时前面的文本会被挡住，类似于输入密码
              decoration: InputDecoration(
                hintText: "密码框" ,//表单，输入栏上会出现灰色的暗示文字，输入文字是原先的文字会消失
                border:OutlineInputBorder(),//输入栏四周出现边框
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入搜索的内容" ,//表单，输入栏上会出现灰色的暗示文字，输入文字是原先的文字会消失
                border:OutlineInputBorder(),//输入栏四周出现边框
                labelText: "用户名", //输入文字时左上角有文字显示
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: "请输入用户名" ,//表单，输入栏上会出现灰色的暗示文字，输入文字是原先的文字会消失
              ),
            ),
          ],
        ),
      ),
    );
  }
}
