import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/screens/profile/components/clan_section.dart';
import 'package:coc_dynamo/screens/profile/components/league_section.dart';
import 'package:coc_dynamo/screens/profile/components/profile_section.dart';
import 'package:coc_dynamo/screens/profile/components/stats_component.dart';
import 'package:coc_dynamo/screens/profile/components/troops.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final ProfileController profileController = Get.put(ProfileController());

// var data = Get.arguments;
@override
void initState() {
  // super.initState();
  var products = profileController.products;
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Profile? profiledata;
    // print(profileController.profile);
    // print(profileController.profile);
    return Container(
      decoration: const BoxDecoration(
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

          backgroundColor: const Color.fromARGB(144, 0, 0, 0),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      child: Column(
                        children: [
                          // Text("${profiledatacontrol.profiledata?.attackWins}"),
                          const ProfileSection(),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Wrap(
                                runSpacing: 12,
                                spacing: 8,
                                children: [
                                  StatsSection(
                                    width:
                                        MediaQuery.of(context).size.width / 4.2,
                                    color: Palette.kPinkColor.withOpacity(0.2),
                                    link: AppAssets.townhall,
                                    name:
                                        "TH ${profileController.products?.townHallLevel.toString()}",
                                  ),
                                  LeagueSection(
                                    link: profileController.products?.league
                                            ?.iconUrls?.small ??
                                        'No Data',
                                    name: profileController
                                        .products?.league?.name,
                                    color:
                                        Palette.leaguePurple.withOpacity(0.3),
                                  ),
                                  const ClanSection(),
                                  StatsSection(
                                    link: AppAssets.levelStar,
                                    color: Colors.blue.withOpacity(0.3),
                                    name: profileController.products?.expLevel
                                        .toString(),
                                    width:
                                        MediaQuery.of(context).size.width / 5.2,
                                  ),
                                  StatsSection(
                                    link: AppAssets.leagueIcon,
                                    color: Colors.orange.withOpacity(0.2),
                                    name: profileController.products?.trophies
                                        .toString(),
                                    width:
                                        MediaQuery.of(context).size.width / 5.2,
                                  ),
                                  StatsSection(
                                    link: AppAssets.attackWon,
                                    color: Colors.red.withOpacity(0.2),
                                    name: profileController.products?.attackWins
                                        .toString(),
                                    width:
                                        MediaQuery.of(context).size.width / 5.2,
                                  ),
                                  StatsSection(
                                    link: AppAssets.defenseWon,
                                    color: Colors.green.withOpacity(0.3),
                                    name: profileController
                                        .products?.defenseWins
                                        .toString(),
                                    width:
                                        MediaQuery.of(context).size.width / 5.2,
                                  ),
                                  StatsSection(
                                    link: AppAssets.warStar,
                                    color: Colors.yellow.withOpacity(0.2),
                                    name: profileController.products?.warStars
                                        .toString(),
                                    width:
                                        MediaQuery.of(context).size.width / 5.2,
                                  )
                                ],
                              ),
                            ],
                          ),
                          // const TroopsSection(),
                          const SizedBox(
                            height: 35,
                          ),
                          const Troopinfo()
                        ],
                      ))))),
    );
  }
}
