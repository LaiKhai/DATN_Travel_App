import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/page/us_home_screen.dart';
import 'package:tourshop_app/ui/page/us_navigator.dart';
import 'package:tourshop_app/ui/page/us_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator_Screen(),
    );
  }
}
