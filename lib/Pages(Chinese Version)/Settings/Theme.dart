import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';
import '../Color_Language_Change.dart';
import 'package:github_project/main.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  var color_type=1;
  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<Counter_Chinese>(context);
    var Chinese_Theme=[counterProvider.Color,4];// 1 English 2 Chinese

    return Scaffold(
      appBar: AppBar(
        title: Text("主题"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 100,),
          OutlineButton.icon(
            icon: Icon(Icons.brightness_high,color: Colors.yellow,),
            label: Text("日间模式"),
            onPressed: () {
              setState(() {
                counterProvider.Color=1;
                counterProvider.Change_Color();
                Chinese_Theme=[counterProvider.Color,4];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context, {arguments}) => CertainPage(
                        arguments:
                        Chinese_Theme)) //(arguments=1)=>main.dart
                );
              });
            },
          ),
          SizedBox(height: 20,),
          OutlineButton.icon(
            icon: Icon(Icons.brightness_2,color: Colors.blue,),
            label: Text("夜间模式"),
            onPressed: () {
              setState(() {
                counterProvider.Color=2;
                counterProvider.Change_Color();
                Chinese_Theme=[counterProvider.Color,4];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context, {arguments}) => CertainPage(
                        arguments:
                        Chinese_Theme)) //NewContentPage类（50讲）为带有参数Map类型的arguments
                );
              });
            },
          ),




        ],
      ),

    );
  }
}
