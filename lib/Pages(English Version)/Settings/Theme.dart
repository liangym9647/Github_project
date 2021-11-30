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
    var counterProvider = Provider.of<Counter>(context);
    var English_Theme=[1,3];// 1 English 2 Chinese

    return Scaffold(
          appBar: AppBar(
            title: Text("Theme"),
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(height: 100,),
              OutlineButton.icon(
                icon: Icon(Icons.brightness_high,color: Colors.yellow,),
                label: Text("Day Mode"),
                onPressed: () {
                  setState(() {
                    English_Theme=[1,3]; //1 day mode, 2 night mode
                    counterProvider.Color=1;
                    counterProvider.Change_Color();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context, {arguments}) => CertainPage(
                            arguments:
                            English_Theme)) //(arguments=1)=>main.dart
                    );
                  });
                },
              ),
              SizedBox(height: 20,),
              OutlineButton.icon(
                icon: Icon(Icons.brightness_2,color: Colors.blue,),
                label: Text("Night Mode"),
                onPressed: () {
                  setState(() {
                    English_Theme=[2,3];
                    counterProvider.Color=2;
                    counterProvider.Change_Color();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context, {arguments}) => CertainPage(
                            arguments:
                            English_Theme)) //NewContentPage类（50讲）为带有参数Map类型的arguments
                    );
                  });
                },
              ),




            ],
          ),

    );
  }
}
