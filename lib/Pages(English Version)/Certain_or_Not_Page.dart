import 'package:flutter/material.dart';
import 'Color_Language_Change.dart';

class CertainPage extends StatefulWidget {

  var arguments=6;

  CertainPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _CertainPageState createState() => _CertainPageState(this.arguments);
}

class _CertainPageState extends State<CertainPage> {
  _CertainPageState(arguments);
  var result;
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return result= AlertDialog(
      title: Text('Warning !'),
      content: Text('Are you sure to select this ?'),
      backgroundColor: Colors.lightBlueAccent,
      elevation: 24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.pop(context); //出栈，返回至上一次，当触发对应按钮后，让result接收context的值
          },
        ),
        FlatButton(
            child: Text('Confirm'),
            onPressed: () {
              this.result=widget.arguments;
              Navigator.pop(
                context,
                widget.arguments,
              );
            } //出栈，返回至上一次，当触发对应按钮后，让result接收context的值
            ),
      ],
    );
  }
}

CertainPage p=CertainPage(arguments: 3);
int a=p.arguments;