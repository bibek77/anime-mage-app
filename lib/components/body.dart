import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:anime_mage/globalConstants/constants.dart';

import 'button_titles.dart';
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
          FeaturedAnimeCards(image: "assests/images/anime/attack-on-titan.jpeg",)
        ],
      ),
    );
  }
}

class FeaturedAnimeCards extends StatelessWidget {
  const FeaturedAnimeCards({
    Key? key,
    required this.image,
    // required this.press,
  }) : super(key: key);
  final String image;
  // final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: appDefaultPadding,
          top: appDefaultPadding / 2,
          bottom: appDefaultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(image))),
    );
  }
}
