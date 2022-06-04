import 'package:flutter/material.dart';
import 'package:skygoal/3.dart';
// import 'package:skygoal/3.dart';
import 'package:skygoal/bottomnavbar.dart';
import 'package:skygoal/tabbabab.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      // theme: ThemeData(
      //   scaffoldBackgroundColor: kBackgroundColor,
      //   primaryColor: kPrimaryColor,
      //   textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: MyWidget(),
    );
  }
}
