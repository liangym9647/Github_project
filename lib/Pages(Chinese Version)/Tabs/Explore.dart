import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
import '../Color_Language_Change.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  bool set_ButtonColor = false;
  int num = 52023;
  void _change_true() {
    setState(() {
      //recompute variables.
      this.set_ButtonColor = true;
      this.num++;
      print(set_ButtonColor);
    });
  }

  void _change_false() {
    setState(() {
      //recompute variables.
      this.set_ButtonColor = false;
      this.num--;
      print(set_ButtonColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 300,
          child: Image.network(
              "https://3401zs241c1u3z7ulj3z6g7u-wpengine.netdna-ssl.com/wp-content/uploads/2020/01/sean-pollock-PhYq704ffdA-unsplash-scaled-1-980x654.jpg"),
        ),
        Card(
          //widget card: containing everything about all information of a guest
          margin: EdgeInsets.all(10), //
          child: Column(
            children: <Widget>[
              ListTile(
                //format of news title
                leading: CircleAvatar(
                  //默认在上方插入头像
                  backgroundImage: NetworkImage(
                      "https://www.itying.com/images/flutter/1.png"), //头像图片
                  radius: 20, //头像大小
                ),
                title: Text("vinta"),
                subtitle: Text(
                  "awesome",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 5,
              ), //leave some space between two widgets
              Text(
                "评论:Awesome list about all kinds of interesting topics",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                //let child widgets are distributed in a row
                children: <Widget>[
                  this.set_ButtonColor == false
                      ? Icon(Icons.star_border)
                      : Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                  Text("${this.num}"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.fiber_manual_record,
                    color: Colors.blue,
                  ),
                  Text("Python"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.person),
                  Text("512 评论者"),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              this.set_ButtonColor == false
                  ? RaisedButton.icon(
                      //a button with an icon
                      icon: Icon(Icons.star_border), //types of the icon
                      label: Text("收藏"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: _change_true,
                    )
                  : RaisedButton.icon(
                      //a button with an icon
                      icon: Icon(Icons.star), //types of the icon
                      label: Text("已收藏"),
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: _change_false,
                    )
            ],
          ),
        ),
      ],
    );
  }
}
