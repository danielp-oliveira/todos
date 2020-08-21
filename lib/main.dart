import 'package:flutter/material.dart';
import 'package:todos/components/avatar.widget.dart';
import 'package:todos/components/button.widget.dart';
import 'package:todos/themes/app.theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          TDButton(
            text: 'Teste',
            width: 300,
            image: 'assets/images/google.png',
            callback: () {},
          ),
          SizedBox(
            height: 40,
          ),
          TDAvatar(
            path: 'https://placehold.it/200',
            width: 120,
          ),
        ],
      ),
    );
  }
}
