import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeagueSection extends StatelessWidget {
  const LeagueSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());

    return Container(
      width: MediaQuery.of(context).size.width * .35,
      height: 103,
      decoration: BoxDecoration(
        color: Palette.leaguePurple.withOpacity(0.3),

        // color: Colors.grey.shade200.withOpacity(0.1),

        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
            profileController.products?.league?.iconUrls?.small ?? 'No Data',
            // "https://api-assets.clashofclans.com/leagues/288/kSfTyNNVSvogX3dMvpFUTt72VW74w6vEsEFuuOV4osQ.png",
            width: 60, height: 60,
          ),
          Text(
            '${profileController.products?.league?.name}',
            // "Crystal League I",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Palette.leagueTextPurple),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
