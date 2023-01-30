import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Troopinfo extends StatelessWidget {
  const Troopinfo({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    const troops = {
      // Heroes
      'Barbarian King': AppAssets.barbarianKing,
      'Archer Queen': AppAssets.archerQueen,
      'Battle Machine': AppAssets.battleMachine,
      'Grand Warden': AppAssets.grandWarden,
      'Royal Champion': AppAssets.royalChampion,

      // Troops
      'Barbarian': AppAssets.barbarian,
      'Archer': AppAssets.archer,
      'Goblin': AppAssets.goblin,
      'Giant': AppAssets.giant,
      'Wall Breaker': AppAssets.wall_breaker,
      'Balloon': AppAssets.balloon,
      'Wizard': AppAssets.wizard,
      'Healer': AppAssets.healer,
      'Dragon': AppAssets.dragon,
      'P.E.K.K.A': AppAssets.pekka,
      'Minion': AppAssets.minion,
      'Hog Rider': AppAssets.hog_rider,
      'Valkyrie': AppAssets.valkyrie,
      'Golem': AppAssets.golem,
      'Witch': AppAssets.witch,
      'Lava Hound': AppAssets.lava_hound,
      'Bowler': AppAssets.bowler,
      'Baby Dragon': AppAssets.baby_dragon,
      'Miner': AppAssets.miner,
      'Electro Dragon': AppAssets.electro_dragon,
      'Ice Golem': AppAssets.ice_golem,
      'Yeti': AppAssets.yeti,
      'Headhunter': AppAssets.head_hunter,
      //workshop
      'Wall Wrecker': AppAssets.wall_wrecker,
      'Battle Blimp': AppAssets.battle_blimp,
      'Stone Slammer': AppAssets.stone_slammer,

      // Super Troopies
      'Super Barbarian': AppAssets.super_barbarian,
      'Super Archer': AppAssets.super_archer,
      'Super Wall Breaker': AppAssets.super_wall_breaker,
      'Super Giant': AppAssets.super_giant,
      'Super Wizard': AppAssets.super_wizard,
      'Super Dragon': AppAssets.super_dragon,
      'Super Minion': AppAssets.super_minion,
      'Super Bowler': AppAssets.super_bowler,
      'Super Valkyrie': AppAssets.super_valkyrie,
      'Super Witch': AppAssets.super_witch,
      'Inferno Dragon': AppAssets.inferno_dragon,
      'Rocket Balloon': AppAssets.rocket_balloon,
      'Sneaky Goblin': AppAssets.sneaky_goblin,
      'Ice Hound': AppAssets.ice_hound,
      'Super Miner': AppAssets.super_miner,
      // Builder hall troopies
      'Raged Barbarian': AppAssets.raged_barbarian,
      'Sneaky Archer': AppAssets.sneaky_archer,
      'Boxer Giant': AppAssets.boxer_giant,
      'Beta Minion': AppAssets.beta_minion,
      'Bomber': AppAssets.bomber,
      'Cannon Cart': AppAssets.cannon_cart,
      'Night Witch': AppAssets.night_witch,
      'Drop Ship': AppAssets.drop_ship,
      'Super P.E.K.K.A': AppAssets.super_pekka,
      'Hog Glider': AppAssets.hog_glider,
    };

    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Palette.grey2.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Troops",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            direction: Axis.horizontal,
            children: List.generate(
                profileController.products?.troops?.length ?? 0,
                (index) => troopsicon(index, troops, "home")),
          ),
          // Wrap(
          //   direction: Axis.horizontal,
          //   children: List.generate(
          //       profileController.products?.troops?.length ?? 0,
          //       (index) => troopsicon(index, troops, "builderBase")),
          // )
        ],
      ),
    ));
  }
}

Widget troopsicon(int index, troops, String base) {
  final ProfileController profileController = Get.put(ProfileController());
  print(profileController.products?.troops![index].name);
  // if (troops[profileController.products?.troops![index].village] == "base") {
  return (profileController.products?.troops![index].village == "home")
      ? Padding(
          padding: const EdgeInsets.all(2),
          child: Stack(
            clipBehavior: Clip.none,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Palette.green, width: 2),
                        borderRadius: BorderRadius.circular(100)),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: Image.asset(
                        '${troops[profileController.products?.troops![index].name]}',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -5,
                right: -5,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 59, 59, 59),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Center(
                      child: Text(
                        ' ${profileController.products?.troops![index].level ?? '0'}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              // Positioned(
              //   top: 0,
              //   right: 0,
              //   child: Container(
              //     width: 15,
              //     height: 15,
              //     decoration: const BoxDecoration(
              //         color: Color.fromARGB(255, 70, 70, 70), shape: BoxShape.circle),
              //     child: Padding(
              //       padding: const EdgeInsets.all(1.0),
              //       child: Text(
              //         '${profileController.products?.troops![index].maxLevel ?? ''}',
              //         textAlign: TextAlign.center,
              //         style: const TextStyle(
              //             fontSize: 11,
              //             fontWeight: FontWeight.w600,
              //             color: Color.fromARGB(255, 255, 81, 0)),
              //       ),
              //     ),
              //   ),
              // ),
              // Text(
              //   profileController.products?.troops![index].name ?? '',
              //   style: TextStyle(
              //       fontSize: 11,
              //       fontWeight: FontWeight.w600,
              //       color: Palette.brown),
              // ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      : Container();
  // }
  // return Text("Error");
}
