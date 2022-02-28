import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/material.dart';
import 'details_image_icons.dart';
import 'details_title_anime.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndRating(
            character: "Eren Yeager",
            anime: "Attack On Titan",
            rating: "SR",
          ),
          SizedBox(
            height: appDefaultPadding,
          ),
          Row(children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: ElevatedButton(
                child: Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(appPrimayColor),
                ),
              ),
            ),
            Expanded(
                child: TextButton(
              child: Text("Related"),
              onPressed: (){},
            ))
          ]),
          SizedBox(height: appDefaultPadding * 2,)
        ],
      ),
    );
  }
}
