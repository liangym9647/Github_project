import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
import '../Color_Language_Change.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({Key? key}) : super(key: key);

  @override
  _DynamicPageState createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  var b=a;

  @override
  change_color(){
    setState(() {
      this.b=a;
      print(this.b);
    });
  }

  @override
  Widget build(BuildContext context) {
    var counterProvider=Provider.of<Counter>(context);
    change_color();
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(JudgeColor().judgeColor(counterProvider.Color)),
      ),
      child: ListView(
        children: <Widget>[
          Text("234"),
        ],
      ),
    );
  }
}
