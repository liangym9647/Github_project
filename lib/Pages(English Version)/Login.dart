import 'package:flutter/material.dart';
import 'widget/JdText.dart';
import 'widget/JdButton.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text("登录页面"),
        actions: <Widget>[
          TextButton(
            child: Text("客服"),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 160,
                width: 160,
                child: Image.network(
                    'https://www.influxdata.com/wp-content/uploads/GitHub-logo.jpg',
                    fit: BoxFit.cover),
                // child: Image.network(
                //     'https://www.itying.com/images/flutter/list5.jpg',
                //     fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30),
            JdText(
              text: "Account Name",
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 10),
            JdText(
              text: "Password",
              password: true,
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Forget PassWord?'),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/registerFirst');
                      },
                      child: Text('Sign in'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            JdButton(
              text: "Log in",
              color: Colors.red,
              height: 74,
              cb: () {},
            )
          ],
        ),
      ),
    );
  }
}
