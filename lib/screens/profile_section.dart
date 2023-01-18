import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Profile Store
    Profile? profiledata;
    print(profiledata?.name);
    print(profiledata?.expLevel);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name and tag of the player and level of the player
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Name of the player and tag of the player
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${profiledata?.name}',
                  style: TextStyle(
                      fontSize: 45, fontWeight: FontWeight.w800, color: brown),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    '${profiledata?.tag}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: black.withOpacity(0.5)),
                  ),
                ),
              ],
            ),

            // Level of the player
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  // Level Image Stack
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        AppAssets.defenseShield,
                        width: 30,
                        height: 30,
                      ),
                      Positioned(
                          top: 8,
                          child: Text(
                            '${profiledata?.expLevel}',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: white),
                          )),
                    ],
                  ),

                  // Experience text
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Experience',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: grey2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
