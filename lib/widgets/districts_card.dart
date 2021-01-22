import 'package:flutter/material.dart';
import 'package:padang_kos/models/districts.dart';
import 'package:padang_kos/theme.dart';

class DistrictsCard extends StatelessWidget {
  final Districts districts;

  DistrictsCard(this.districts);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  districts.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                districts.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              districts.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
