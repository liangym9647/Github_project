import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
import 'package:provider/provider.dart';
import '../Color_Language_arguments.dart';
import '../Color_Language_Change.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    var counterProvider=Provider.of<Counter_Chinese>(context);
    var Chinese_Language=[counterProvider.Color,4];
    return Scaffold(
      appBar: AppBar(
        title: Text("语言"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Text("  选择你的语言: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
          SizedBox(height: 20,),
          OutlineButton(
            child: Text("English"),
            onPressed: () {
              setState(() {
                Chinese_Language=[counterProvider.Color,3];
              });
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context,{arguments}) => CertainPage(arguments: Chinese_Language,))
              );//changed into the route to Language Page
            },
          ),
          SizedBox(height: 10,),
          OutlineButton(
            //边框按钮组件
            child: Text("中文"),
            onPressed: () {
              setState(() {
                Chinese_Language=[counterProvider.Color,4];
              });
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context,{arguments}) => CertainPage(arguments: Chinese_Language,)) //changed into the route to Language Page
              );
            },
          ),
        ],
      ),
    );
  }
}
