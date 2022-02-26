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
            title: 'Trending',
            press: () {},
          )
        ],
      ),
    );
  }
}

