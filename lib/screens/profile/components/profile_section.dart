import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    // Profile Store
    // Profile? profiledata;
    // print(profiledata?.name);
    // print(profiledata?.expLevel);

// var data = Get.arguments;
    @override
    void initState() {
      // super.initState();
      var products = profileController.products;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Image.asset(
            "lib/img/witch.png",
            width: 300,
            height: 300,
          ),
        ),
        Text(
          '${profileController.products?.name}',
          // "Anlinbabu",
          style: const TextStyle(
              fontSize: 35, fontWeight: FontWeight.w800, color: Palette.green),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 0),
        //   child: Text(
        //     '${profileController.products?.tag}',
        //     // "#90RJ8899G",
        //     style: const TextStyle(
        //         fontSize: 14, fontWeight: FontWeight.w700, color: Palette.grey),
        //   ),
        // ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
