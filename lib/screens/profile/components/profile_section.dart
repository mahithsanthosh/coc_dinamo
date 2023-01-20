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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Level of the player
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      // Level Image Stack
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(
                            AppAssets.levelStar,
                            width: 30,
                            height: 30,
                          ),
                          Positioned(
                              top: 8,
                              child: Text(
                                // '${profiledata?.expLevel}',
                                "158",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Palette.white),
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
                              color: Palette.grey2),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // '${profiledata?.name}',
                      "Anlinbabu",
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w800,
                          color: Palette.green),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        // '${profiledata?.tag}',
                        "#90RJ8899G",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Palette.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppAssets.profile_img,
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ],
    );
  }
}
