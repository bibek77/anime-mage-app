import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anime_mage/globalConstants/constants.dart';

class FeaturedAnimes extends StatelessWidget {
  const FeaturedAnimes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedAnimeCards(
            image: "assests/images/anime/attack-on-titan.jpeg",
            press: () {},
          ),
          FeaturedAnimeCards(
            image: "assests/images/anime/demon-slayer.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedAnimeCards extends StatelessWidget {
  const FeaturedAnimeCards({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final VoidCallback press;

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
            fit: BoxFit.cover,
            image: AssetImage(image))),
    );
  }
}
