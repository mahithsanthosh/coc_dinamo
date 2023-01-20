import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/screens/profile/components/clan_section.dart';
import 'package:coc_dynamo/screens/profile/components/league_section.dart';
import 'package:coc_dynamo/screens/profile/components/profile_section.dart';
import 'package:coc_dynamo/screens/profile/components/troops_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final profileController = Get.put(ProfileController());

// var data = Get.arguments;
@override
void initState() {
  // super.initState();
  profileController.getPlayer("90rj8899g");
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Profile? profiledata;
    print(profileController.profile);
    print(profileController.profile);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
            Color(0xFF542964),
            Color(0xFF193d74),
          ],
              stops: [
            0.2,
            .8
          ])),
      child: Scaffold(

          // background: linear-gradient(90deg, rgba(0,69,170,1) 0%, rgba(0,35,170,1) 4%, rgba(0,35,170,1) 10%, rgba(165,0,213,1) 25%, rgba(173,0,255,1) 40%, rgba(183,0,255,1) 55%, rgba(138,7,176,1) 68%, rgba(31,0,167,1) 85%, rgba(0,129,255,1) 100%);
          // backgroundColor: Palette.kScaffoldBackground,

          backgroundColor: Color.fromARGB(144, 0, 0, 0),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(
                        10,
                      ),
                      child: Column(
                        children: [
                          // Text("${profiledatacontrol.profiledata?.attackWins}"),
                          ProfileSection(),
                          SizedBox(
                            height: 15,
                          ),

                          Column(
                            children: [
                              Row(
                                children: [
                                  const ClanSection(),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  const LeagueSection(),
                                ],
                              ),
                            ],
                          ),
                          // const TroopsSection(),
                        ],
                      ))))),
    );
  }
}
