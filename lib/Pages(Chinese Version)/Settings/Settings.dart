import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'Language.dart';
import 'Theme.dart';
import '../Color_Language_Change.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("设置"),
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            OutlineButton.icon(
              //边框按钮组件
              icon: Icon(
                Icons.person_pin,
              ),
              label: Text("你的账号"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              //边框按钮组件
              icon: Icon(
                Icons.local_mall,
              ),
              label: Text("主题"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ThemePage()) //changed into the route to Theme Page
                    );
              },
            ),
            OutlineButton.icon(
              //边框按钮组件
              icon: Icon(
                Icons.language,
              ),
              label: Text("语言"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            Language()) //changed into the route to Language Page
                    );
              },
            ),
            OutlineButton.icon(
              //边框按钮组件
              icon: Icon(
                Icons.thumb_up,
              ),
              label: Text("关于 GitHub"),
              onPressed: () {},
            ),
          ],
        ),
    );
  }
}
