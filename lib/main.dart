import 'package:dashboard_2/constants.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marketing Tools',
      theme: ThemeData(
          primaryColor: primarycolor, scaffoldBackgroundColor: primarycolor),
      home: const Login(),
    );
  }
}
