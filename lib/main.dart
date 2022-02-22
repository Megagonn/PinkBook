import 'package:flutter/material.dart';
import 'package:pinkbook/mobile.dart';
import 'package:pinkbook/responsive.dart';
import 'package:pinkbook/utilities.dart';
import 'package:pinkbook/web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Res(web: LSV(), mobile: SSV(),),
      ),
    );
  }
}
