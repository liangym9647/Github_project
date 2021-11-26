import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  //const FormPage({Key? key}) : super(key: key);
  String title;
  FormPage({this.title='表单'});//，接收title的值，title为可选传参，加{}


  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold包括所有内容
      floatingActionButton: FloatingActionButton( //在右下方设置一个按钮
        child: Text('返回'), //按钮名字
        onPressed: (){
          Navigator.of(context).pop(); //当点击返回按钮，触发pop命令，pop为出栈（退出当前页面）
        },
      ),
      appBar: AppBar(
        title: Text(this.title),//上方蓝色条显示的内容
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
        ],
      ),
    );
  }
}
