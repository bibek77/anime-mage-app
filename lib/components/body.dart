import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anime_mage/globalConstants/constants.dart';
import 'button_titles.dart';
import 'featured_animes.dart';
import 'header_search_box.dart';
import 'main_characters.dart';

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
          MainCharacters(),
          TitleWithButton(title: "Featured Animes", press: () {}),
          FeaturedAnimes(),
          SizedBox(
            height: appDefaultPadding,
          )
        ],
      ),
    );
  }
}

