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
      width: MediaQuery.of(context).size.width / 3.9,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(.3),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
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
            width: 30,
            height: 30,
          ),
          Text(
            profileController.products?.clan?.name ?? '',
            // 'Dinamo',
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Palette.white),
          ),
        ],
      ),
    );
  }
}
