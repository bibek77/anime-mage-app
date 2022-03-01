import 'package:anime_mage/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anime_mage/globalConstants/constants.dart';

class HeaderSearchBox extends StatelessWidget {
  const HeaderSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: appDefaultPadding * 1.8),
      height: size.height * 0.18,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: appDefaultPadding,
                right: appDefaultPadding,
                bottom: 30 + appDefaultPadding),
            height: size.height * 0.2 - 55,
            decoration: BoxDecoration(
                color: MyTheme.primaryAppColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  'Anime Mage',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assests/images/konoha_sq_logo.jpg",
                      height: 70,
                      width: 70,
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 235, 235),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: MyTheme.primaryAppColor)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find",
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(CupertinoIcons.search)),
                ),
              ))
        ],
      ),
    );
  }
}
