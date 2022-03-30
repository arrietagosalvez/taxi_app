import 'package:flutter/material.dart';
import 'package:radio_taxi/pages/home/home_page.dart';
import 'package:radio_taxi/pages/login/login_page.dart';
import 'package:radio_taxi/utils/colors.dart' as utils;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quom Radio Taxi',
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'SwipeRace',
            appBarTheme: AppBarTheme(
            elevation: 0,
      ),
        primaryColor: utils.Colors.colorGreen,

      ),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context)=> LoginPage(),
      },
    );
  }
}
