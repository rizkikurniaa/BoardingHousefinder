import 'dart:math';

import 'package:flutter/material.dart';
import 'package:padang_kos/models/districts.dart';
import 'package:padang_kos/models/space.dart';
import 'package:padang_kos/theme.dart';
import 'package:padang_kos/widgets/districts_card.dart';
import 'package:padang_kos/widgets/space_card.dart';
import 'package:padang_kos/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: edge,
            ),
            child: ListView(
              children: [
                // NOTE : TITLE/HEADER
                Padding(
                  padding: EdgeInsets.only(
                    left: edge,
                  ),
                  child: Text(
                    'Explore Now',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Temukan kosan idaman mu',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE : POPULAR DISTRICTS
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Popular Districts',
                    style: regulerTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      DistrictsCard(
                        Districts(
                            id: 1,
                            name: 'Kuranji',
                            imageUrl: 'assets/images/city1.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DistrictsCard(
                        Districts(
                            id: 2,
                            name: 'Pauh',
                            imageUrl: 'assets/images/city2.png',
                            isPopular: true),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DistrictsCard(
                        Districts(
                            id: 3,
                            name: 'Lubeg',
                            imageUrl: 'assets/images/city3.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE : RECOMMENDED SPACE
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Recommended Space',
                    style: regulerTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: [
                      SpaceCard(
                        Space(
                          id: 1,
                          name: 'Kos Rizki',
                          imgUrl: 'assets/images/space1.png',
                          price: 52,
                          district: 'Kuranji',
                          city: 'Padang',
                          rating: 4,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                          id: 2,
                          name: 'Kos Kikulabs',
                          imgUrl: 'assets/images/space2.png',
                          price: 80,
                          district: 'Padang Timur',
                          city: 'Padang',
                          rating: 3,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                          id: 3,
                          name: 'Kos Sulistyo',
                          imgUrl: 'assets/images/space3.png',
                          price: 32,
                          district: 'Pauh',
                          city: 'Padang',
                          rating: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE : TIPS & GUIDANCE
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Tips & Guidance',
                    style: regulerTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  child: Column(
                    children: [
                      TipsCard(),
                      SizedBox(
                        height: 20,
                      ),
                      TipsCard(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
