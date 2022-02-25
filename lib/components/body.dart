import 'package:anime_mage/globalConstants/constants.dart';
import 'package:anime_mage/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
              ),
              Positioned(child: Container(
                margin: EdgeInsets.symmetric(horizontal: appDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
