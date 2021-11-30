import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart'; //inappwebview第三方包，https://pub.dev/packages/flutter_inappwebview/example
//在左边的android/app/src/main/res/AndroidManifest.xml里面的<application上一行写入<uses-permission android:name="android.permission.INTERNET"/>以请求网络连接
//android/app/build.gradle下将minSdkVersion 16改成minSdkVersion 19

class NewsPage extends StatefulWidget {
  var arguments;
  NewsPage({Key? key,required this.arguments}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  void initState(){
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Outside the GitHub"),
      ),
      body: Column(
        children: <Widget>[
          Expanded( //Column和Expanded将网页内容显示出来
              child:InAppWebView( //InAppWebView组件
                initialUrlRequest: //Url网络请求固定语句，与视频不同
                URLRequest(url: Uri.parse("${widget.arguments}")), //显示http网址的页面
                onProgressChanged: (InAppWebViewController controller,int progress){
                  print(progress/100);
                  //视频中还有加载圈圈的组件，不重要

                },
              )
          )
        ],
      ),
    );
  }
}
