import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';
import '../Color_Language_Change.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  var color_type = 6;

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<Counter>(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color:
            Color(JudgeColor().judgeColor(counterProvider.Color)), //gain colors
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Theme"),
          ),
          body: ListView(
            children: <Widget>[
              OutlineButton(
                child: Text("black"),
                onPressed: () {
                  setState(() {
                    this.color_type = 1;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                },
              ),
              OutlineButton(
                child: Text("red"),
                onPressed: () {
                  setState(() {
                    this.color_type = 2;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                },
              ),
              OutlineButton(
                child: Text("blown"),
                onPressed: () {
                  setState(() {
                    this.color_type = 3;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                },
              ),
              OutlineButton(
                child: Text("light blue"),
                onPressed: () {
                  setState(() {
                    this.color_type = 4;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                },
              ),
              OutlineButton(
                child: Text("orange"),
                onPressed: () {
                  setState(() {
                    this.color_type = 5;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                },
              ),
              OutlineButton(
                child: Text("white"),
                onPressed: () {
                  setState(() {
                    this.color_type = 6;
                    counterProvider.Color = this.color_type;
                    counterProvider.Change_Color();
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context, {arguments}) => CertainPage(
                                arguments: 6,
                              )) //changed into the route to Language Page
                      );
                },
              ),
            ],
          )),
    );
  }
}
