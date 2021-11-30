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
    var counterProvider=Provider.of<Counter>(context);
    var English_Language=[counterProvider.Color,3];
    return Scaffold(
        appBar: AppBar(
          title: Text("Language"),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            Text("  Select Your Language: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),
            OutlineButton(
              child: Text("English"),
              onPressed: () {
                English_Language=[counterProvider.Color,3];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context,{arguments}) => CertainPage(arguments: English_Language,))
                );//changed into the route to Language Page
              },
            ),
            SizedBox(height: 10,),
            OutlineButton(
              //边框按钮组件
              child: Text("Chinese"),
              onPressed: () {
                English_Language=[counterProvider.Color,4];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context,{arguments}) => CertainPage(arguments: English_Language,)) //changed into the route to Language Page
                );
              },
            ),
          ],
        ),
    );
  }
}
