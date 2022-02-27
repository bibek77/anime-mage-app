import 'package:anime_mage/components/body.dart';
import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: AppBody(),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(CupertinoIcons.bars),
        onPressed: () {},
      ),
    );
  }
}
