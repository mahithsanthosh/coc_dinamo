import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClanSection extends StatelessWidget {
  const ClanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    return Container(
      width: MediaQuery.of(context).size.width * .55,
      height: 103,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.network(
          //   // profiledata?.clan?.badgeUrls?.medium ?? 'No Data',
          //   "https://www.clipartmax.com/png/middle/42-421581_coc-indian-army-clash-of-clans-level-10-clan-logo.png",
          //   fit: BoxFit.cover,
          //   scale: 2.2,
          // ),
          Image.network(
            profileController.products?.clan?.badgeUrls?.small ?? '',
            fit: BoxFit.cover,
            width: 52,
            height: 52,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                profileController.products?.clan?.name ?? '',
                // 'Dinamo',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Palette.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${profileController.products?.clan?.tag}',
                // "2YRL0R8LR",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Palette.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
