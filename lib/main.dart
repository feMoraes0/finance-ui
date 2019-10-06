import 'package:finance/app/login/get_start.dart';
import 'package:finance/app/login/registration.dart';
import 'package:finance/app/login/verification.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Avenir Next"),
      routes: {
        "get_started": (context) => GetStart(),
        "registration": (context) => Registration(),
        "verification": (context) => Verification(),
      },
      home: GetStart(),
      debugShowCheckedModeBanner: false,
    );
  }
}
