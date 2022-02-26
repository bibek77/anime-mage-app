import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import 'button_titles.dart';
import 'header_search_box.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSearchBox(size: size),
          TitleWithButton(
            title: 'Trending Characters',
            press: () {},
          ),
          Container(
            margin: EdgeInsets.only(
                left: appDefaultPadding, top: appDefaultPadding / 2,
                bottom: appDefaultPadding * 2.5),
            width: size.width * 0.3,
            child: Column(
              children: [
                Image.asset("assests/images/eren-yeager-full-size.png"),
                Container(
                  padding: EdgeInsets.all(appDefaultPadding / 2),
                  decoration:
                      BoxDecoration(color: Colors.transparent, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: appPrimayColor.withOpacity(0.7))
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
