import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/material.dart';
import 'details_image_icons.dart';

class TitleAndRating extends StatelessWidget {
  const TitleAndRating({
    Key? key, required this.character, required this.anime, required this.rating,
  }) : super(key: key);

  final String character, anime, rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: Row(children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "${character}\n",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: appTextColor, fontWeight: FontWeight.bold)),
          TextSpan(
              text: anime,
              style: TextStyle(
                  fontSize: 20,
                  color: appPrimayColor,
                  fontWeight: FontWeight.w300))
        ])),
        Spacer(),
        Text(
          rating,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: appPrimayColor, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
