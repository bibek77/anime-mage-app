import 'package:anime_mage/globalConstants/color_palatte.dart';
import 'package:anime_mage/globalConstants/constants.dart';
import 'package:anime_mage/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Mage',
      theme: ThemeData(
          // primaryColor: appPrimayColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: appTextColor),
          primarySwatch: Colors.green
          ),
      home: HomeScreen(),
    );
  }
}
