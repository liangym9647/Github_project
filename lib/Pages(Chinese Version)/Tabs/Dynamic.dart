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
    var counterProvider=Provider.of<Counter_Chinese>(context);
    change_color();
    return Scaffold(
      body:ListView(
        children: <Widget>[
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("你还没有任何通知",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)
            ],
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton.icon(
                  icon: Icon(Icons.add_circle),
                  label: Text("   开始你的第一个项目"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                  }, //
                ),
              ],
            ),

          )
        ],
      ),
    );
  }
}
