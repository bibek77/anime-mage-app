import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class MainCharacters extends StatelessWidget {
  const MainCharacters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TrendingCharactersCards(
            image: "assests/images/characters/eren-yeager-full-size.png",
            character: "Eren Yeager",
            anime: "Attack On Titan",
            rating: "SR",
            press: () {},
          ),
          TrendingCharactersCards(
            image: "assests/images/characters/naruto-full-size.png",
            character: "Naruto",
            anime: "Naruto",
            rating: "SSR",
            press: () {},
          ),
          TrendingCharactersCards(
            image: "assests/images/characters/hatake-kakashi-full-size.png",
            character: "Kakashi",
            anime: "Naruto",
            rating: "R",
            press: () {},
          ),
          TrendingCharactersCards(
            image: "assests/images/characters/tanjiro-full-size.png",
            character: "Tanjiro",
            anime: "Demon",
            rating: "R",
            press: () {},
          ),
          TrendingCharactersCards(
            image: "assests/images/characters/zenitsu-full-size.png",
            character: "Zenitsu",
            anime: "Demon Slayer",
            rating: "R",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TrendingCharactersCards extends StatelessWidget {
  const TrendingCharactersCards(
      {Key? key,
      required this.image,
      required this.character,
      required this.anime,
      required this.rating,
      required this.press})
      : super(key: key);

  final String image, character, anime, rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: appDefaultPadding,
          top: appDefaultPadding / 2,
          // right: appDefaultPadding * 2,
          bottom: appDefaultPadding * 2.5),
      width: size.width * 0.3,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: appPrimayColor.withOpacity(0.25))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$character\n",
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$anime",
                        style:
                            TextStyle(color: appPrimayColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    '$rating',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: appPrimayColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
