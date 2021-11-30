import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../Microsoft_GitHub_Page.dart';
import '../Settings/Settings.dart';
import '../Color_Language_Change.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var website_name;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                height: 30,
              ),
              ListTile(
                leading: CircleAvatar(
                  //默认在上方插入头像
                  backgroundImage: NetworkImage(
                      "https://www.itying.com/images/flutter/3.png"), //头像图片
                  radius: 60, //头像大小
                ),
                title: Text(
                  "用户名",
                ),
                subtitle: Text(
                  "0 粉丝   0 关注",
                ),
              ),
              SizedBox(height: 20), //按钮之间设置一个距离以免连在一起
              Text(
                "    我的生涯",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              ),
              OutlineButton.icon(
                //边框按钮组件
                icon: Icon(
                  Icons.event_available,
                  color: Colors.green,
                ),
                label: Text("议题"),
                onPressed: () {},
              ),
              OutlineButton.icon(
                //边框按钮组件
                icon: Icon(
                  Icons.receipt,
                  color: Colors.red,
                ),
                label: Text("仓库"),
                onPressed: () {},
              ),
              OutlineButton.icon(
                //边框按钮组件
                icon: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                label: Text("组织"),
                onPressed: () {},
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "     最爱",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              ),
              OutlineButton.icon(
                icon: Icon(
                  Icons.window,
                  color: Colors.blue,
                ),
                label: Text("微软"),
                onPressed: () {
                  this.website_name = "微软";
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewsPage(
                        arguments:
                            "https://news.microsoft.com/announcement/microsoft-acquires-github/",
                      ),
                    ),
                  );
                },
              ),
              OutlineButton.icon(
                //边框按钮组件
                icon: Icon(
                  Icons.computer,
                ),
                label: Text("桌面版"),
                onPressed: () {
                  this.website_name = "Desktop";
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewsPage(
                        arguments: "https://github.com/",
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "     其他",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              ),
              OutlineButton.icon(
                //边框按钮组件
                icon: Icon(
                  Icons.settings,
                ),
                label: Text("设置"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context, {arguments}) => SettingsPage(
                              )) //有返回键的界面
                      );
                },
              ),
              RaisedButton.icon(
                  icon: Icon(Icons.clear),
                  label: Text("注销"),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
