import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatsSection extends StatelessWidget {
  late Color color;
  late String link;
  late String? name;
  late double width;
  StatsSection(
      {Key? key,
      required this.color,
      required this.link,
      required this.name,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());

    return Container(
      width: width,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        // color: Colors.grey.shade200.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            link,
            // "https://api-assets.clashofclans.com/leagues/288/kSfTyNNVSvogX3dMvpFUTt72VW74w6vEsEFuuOV4osQ.png",
            width: 30, height: 30,
          ),
          Text(
            name!,
            // "Crystal League I",
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
