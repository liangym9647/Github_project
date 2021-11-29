import 'package:flutter/material.dart';
import 'widget/MyButton.dart';

class TextDemoPage extends StatefulWidget {
  const TextDemoPage({Key? key}) : super(key: key);

  @override
  _TextDemoPageState createState() => _TextDemoPageState();
}

class _TextDemoPageState extends State<TextDemoPage> {
  var username =
      new TextEditingController(); //username：初始化时给表单赋值，username类型不确定，用var
  var password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("searching for new"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "search",
                    ),
                    controller:
                        username, //当加载时，TextField表单里面的输入内容默认为controller的内容，即username
                    onChanged: (value) {
                      //监听，当文本信息出现改变时，value的值为文本的值，执行onChanged下面语句
                      setState(() {
                        //监听改变数值语句
                        username.text = value; //将文本的内容value赋值给username.text
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    //two buttons' widget, the blue one and the red one, they are distributed on a row.
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        //加入Container使按钮可以变化大小
                        width: 150, //按钮宽度与Container一样
                        height: 40,
                        child: RaisedButton.icon(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          label: Text("search"),
                          onPressed: () {
                            print(this
                                .username
                                .text); //this.username.text文本框的值,将上面获取到username.text的值打印出来
                            print(this.password); //获取password
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        //加入Container使按钮可以变化大小
                        width: 150, //按钮宽度与Container一样
                        height: 40,
                        child: RaisedButton.icon(
                          icon: Icon(
                            Icons.clear,
                            color: Colors.white,
                          ),
                          label: Text("cancel"),
                          onPressed: () {
                            print(this
                                .username
                                .text); //this.username.text文本框的值,将上面获取到username.text的值打印出来
                            print(this.password); //获取password
                            Navigator.pop(context);
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("guess what you like: ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    height: 600,
                    color: Color.fromARGB(100, 100, 200, 100),
                    padding: EdgeInsets.all(10), //子组件与边缘距离为10
                    child: Wrap(
                      spacing: 10, //子组件之间的左右距离为10
                      runSpacing: 10, //子组件之间的上下距离为10（在上下基础距离上加10）
                      direction: Axis.vertical, //子组件竖直布局，默认水平布局
                      alignment: WrapAlignment
                          .start, //所有子组件横轴的对齐方式，center，end，start等,spaceEvenly组件之间距离与组件到边缘距离相等
                      runAlignment: WrapAlignment
                          .spaceEvenly, //所有子组件竖轴的对齐方式，center，end，start等，需要在Container里面才能实现
                      children: <Widget>[
                        MyButton("Java"),
                        MyButton("Python"),
                        MyButton("C++"),
                        MyButton("Projects"),
                        MyButton("Trends of programming languages"),
                        MyButton("GitHub"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
