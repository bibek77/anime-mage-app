import 'package:anime_mage/globalConstants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_icon_card.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: appDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(CupertinoIcons.arrow_left)),
                      ),
                      Spacer(),
                      IconCard(
                          icon: Icon(CupertinoIcons.moon, color: appPrimayColor)),
                      IconCard(
                          icon:
                              Icon(CupertinoIcons.camera, color: appPrimayColor)),
                      IconCard(
                          icon: Icon(CupertinoIcons.cloud_download,
                              color: appPrimayColor)),
                      IconCard(
                          icon: Icon(CupertinoIcons.bell, color: appPrimayColor))
                    ],
                  ),
                )),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        topRight: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 60,
                            color: appPrimayColor.withOpacity(0.49))
                      ],
                      image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assests/images/characters/eren-yeager-full-size.png"))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
