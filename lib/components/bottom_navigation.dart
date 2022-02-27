import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: appDefaultPadding * 2,
          right: appDefaultPadding * 2,
          bottom: appDefaultPadding),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: appPrimayColor.withOpacity(0.28))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.star),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.heart),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.person),
          )
        ],
      ),
    );
  }
}
