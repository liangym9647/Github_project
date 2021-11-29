import 'package:flutter/material.dart';
import 'Tabs/Explore.dart';
import 'Tabs/Dynamic.dart';
import 'Tabs/My.dart';
import 'User.dart'; //引入User.dart，点击侧边栏的“我的空间”会自动实现路由跳转，跳至UserPage
import 'SearchPage.dart';
import 'Login.dart';
import 'Settings/Settings.dart';

//类似Dart多态的import

class Tabs extends StatefulWidget {
  //stful快捷键生成
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0; //Index为第一个
  List _pageList = [
    DynamicPage(),
    ExplorePage(),
    MyPage(),
    LoginPage(),
  ]; //将三个页面的组件都放入一个List里面，方便调用
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text("Welcome to GitHub"),
          actions: <Widget>[
            //在bar的右侧第二个设置一个搜索图标，监听
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TextDemoPage(),
                  ),
                ); //有返回键的界面
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: this._pageList[this
            ._currentIndex], //this.currentIndex的值等于List _pageList的索引值，以调用对应的页面组件，如this._currentIndex=1，
        //那么this._pageList[1]，调用CatagoryPage()类的功能，将return的数据作为body输出的内容
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, //设置选中时的索引值大小，第n-1个被选中，0为第一个,1为第二个
          onTap: (int index) {
            //当底部导航条被点击时触发的方法（监听），以index为变量，跟踪点击时对应的索引值
            setState(() {
              //改变界面状态
              this._currentIndex = index; //索引值发生变化，所有的this.currentIndex都发生变化
            });
          },

          iconSize: 30, //设置底部图标的大小
          fixedColor: Colors.red, //选中时该导航条的颜色
          type: BottomNavigationBarType
              .fixed, //底部的tabs可以有多个按钮，如果不写该语句，底下的BottomNavigationBarItem一旦超过4个，有部分就会被排挤掉，但_pagelist
          //要增加相应的元素才行

          items: [
            //有什么底部导航
            BottomNavigationBarItem(
              icon: Icon(Icons.email), //图标
              title: Text("Notifications"), //导航条名字
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              title: Text("My"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              title: Text("Login"),
            ),
          ],
        ), //bottomNavigationBar在Scaffold组件里面，里面为语句

        drawer: Drawer(
          //定义Drawer，Tabs界面左边出现三条杠的侧边栏，三个navigationbar都有侧边栏
          child: Column(
            //以列的形式呈现
            children: <Widget>[
              Row(
                //使用Row和Expanded组件让组件能够铺满整个侧边栏部分
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      //侧边栏用户信息专属栏语句
                      accountName: Text("Yiming Liang"), //用户名
                      accountEmail: Text("129389491@qq.com"), //用户邮箱
                      currentAccountPicture: CircleAvatar(
                        //默认在上方插入头像
                        backgroundImage: NetworkImage(
                            "https://www.itying.com/images/flutter/3.png"), //头像图片
                      ),
                      decoration: BoxDecoration(
                        //装饰UserAccountsDrawerHeader
                        color: Colors.yellow, //最上面头部位置设置为黄色
                        image: DecorationImage(
                          //背景图像
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                          fit: BoxFit.cover, //图片自适应填满头部部分
                        ),
                      ),
                    ),
                  )
                ],
              ),

              ListTile(
                //添加每部分内容
                leading: CircleAvatar(
                  //ListTile开头头像语句
                  child: Icon(Icons.home), //home的头像
                ),
                title: Text("Home",style: TextStyle(fontSize: 18),), //文字内容
                onTap: () {
                  //onTap: 对侧边栏内容进行跳转，点击“我的空间”会跳转到User.dart的UserPage
                  Navigator.of(context).pop(); //当路由跳转后点击返回，侧边栏会隐藏起来不会出现
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserPage()), //跳转语句
                  ); //有返回键的界面
                },
              ),
              Divider(), //将每部分的内容之间使用横线隔开
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("Center",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserPage()), //跳转语句
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("Settings",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsPage()), //跳转语句
                  ); //有返回键的界面
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
