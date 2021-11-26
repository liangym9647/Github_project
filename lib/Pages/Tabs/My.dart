import 'package:flutter/material.dart';
import '../MicrosoftPage.dart';
import '../Settings.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var website_name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
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
                      radius: 50, //头像大小
                    ),
                    title: Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                      //The Style of Text
                    ),
                    subtitle: Text(
                      "Personlized Signature",
                    ),
                  ),
                  SizedBox(height: 20), //按钮之间设置一个距离以免连在一起
                  Text(
                    "    My Work",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                  ),
                  OutlineButton.icon(
                    //边框按钮组件
                    icon: Icon(
                      Icons.event_available,
                      color: Colors.green,
                    ),
                    label: Text("Issues"),
                    onPressed: () {},
                  ),
                  OutlineButton.icon(
                    //边框按钮组件
                    icon: Icon(
                      Icons.receipt,
                      color: Colors.red,
                    ),
                    label: Text("Repositories"),
                    onPressed: () {},
                  ),
                  OutlineButton.icon(
                    //边框按钮组件
                    icon: Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    label: Text("Organizations"),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "     Favorites",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                  ),
                  OutlineButton.icon(
                    icon: Icon(
                      Icons.window,
                      color: Colors.blue,
                    ),
                    label: Text("Microsoft"),
                    onPressed: () {
                      this.website_name="Microsoft";
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NewsPage(
                            arguments: "https://news.microsoft.com/announcement/microsoft-acquires-github/",
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
                    label: Text("Desktop"),
                    onPressed: () {
                      this.website_name="Desktop";
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
                    "     Others",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                  ),
                  OutlineButton.icon(
                    //边框按钮组件
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: Text("Settings"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              SettingsPage()) //有返回键的界面
                      );
                    },
                  ),
                  RaisedButton.icon(
                      icon: Icon(Icons.clear),
                      label: Text("Log out"),
                      color: Colors.red,
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
