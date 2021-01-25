import 'package:flutter/material.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/space1.png",
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icon_star.png',
                          width: 22,
                          height: 22,
                        ),
                        Text(
                          '4/5',
                          style: whiteTextStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kos Pak Kumar',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: '\$52',
                style: purpleTextStyle.copyWith(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                      text: '/month',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Kuranji, Padang',
              style: greyTextStyle,
            )
          ],
        )
      ],
    );
  }
}
