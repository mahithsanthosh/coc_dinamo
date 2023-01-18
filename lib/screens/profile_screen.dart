import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/screens/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final ProfileController profiledatacontrol = Get.put(ProfileController());

// var data = Get.arguments;
@override
void initState() {
  // super.initState();
  profiledatacontrol.getPlayer("90rj8899g");
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Profile? profiledata;
    print(profiledatacontrol);
    print(profiledatacontrol.profiledata);
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 17.5),
                    child: Column(
                      children: [
                        // Text("${profiledatacontrol.profiledata?.attackWins}"),
                        // ProfileSection()
                      ],
                    )))));
  }
}
