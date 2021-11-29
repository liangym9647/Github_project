import 'package:flutter/material.dart';
import '../Certain_or_Not_Page.dart';
class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context,{arguments}) => CertainPage(arguments: 7,))
              );//changed into the route to Language Page
            },
          ),
          SizedBox(height: 10,),
          OutlineButton(
            //边框按钮组件
            child: Text("Chinese"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context,{arguments}) => CertainPage(arguments: 8,)) //changed into the route to Language Page
              );
            },
          ),
        ],
      ),
    );
  }
}
