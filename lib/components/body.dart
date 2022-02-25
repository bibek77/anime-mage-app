import 'package:anime_mage/globalConstants/constants.dart';
import 'package:anime_mage/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: Colors.green,
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
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                    padding:
                        EdgeInsets.symmetric(horizontal: appDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 235, 235),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.green.withOpacity(0.43))
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Find",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.8)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(CupertinoIcons.search)),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
