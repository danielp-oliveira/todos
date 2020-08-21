import 'package:flutter/material.dart';
import 'package:todos/themes/app.theme.dart';
import 'package:todos/views/login.view.dart';

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
      home: LoginView(),
    );
  }
}
