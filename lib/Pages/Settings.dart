import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: <Widget>[
          OutlineButton.icon(
            //边框按钮组件
            icon: Icon(
              Icons.person_pin,
            ),
            label: Text("Your account"),
            onPressed: () {},
          ),
          OutlineButton.icon(
            //边框按钮组件
            icon: Icon(
              Icons.local_mall,
            ),
            label: Text("Theme"),
            onPressed: () {},
          ),
          OutlineButton.icon(
            //边框按钮组件
            icon: Icon(
              Icons.language,
            ),
            label: Text("Language"),
            onPressed: () {},
          ),
          OutlineButton.icon(
            //边框按钮组件
            icon: Icon(
              Icons.thumb_up,
            ),
            label: Text("About GitHub"),
            onPressed: () {},
          ),
        ],

      ),
    );
  }
}
