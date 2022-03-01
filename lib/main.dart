
import 'package:anime_mage/globalConstants/constants.dart';
import 'package:anime_mage/screens/home_screen.dart';
import 'package:anime_mage/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Mage',
      // theme: ThemeData(
      //     textTheme: Theme.of(context).textTheme.apply(bodyColor: appTextColor),
      //     // primarySwatch: Colors.green
          
      //     ),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: HomeScreen(),
    );
  }
}
