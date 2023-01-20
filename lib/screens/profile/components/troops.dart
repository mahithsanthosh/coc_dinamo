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

      // Builder hall troopies
      'Raged Barbarian': AppAssets.raged_barbarian,
      'Sneaky Archer': AppAssets.sneaky_archer,
      'Boxer Giant': AppAssets.boxer_giant,
      'Beta Minion': AppAssets.beta_minion,
      'Bomber': AppAssets.bomber,
      'Cannon Cart': AppAssets.cannon_cart,
      'Night Witch': AppAssets.night_witch,
      'Drop Ship': AppAssets.drop_ship,
      'Super Pekka': AppAssets.super_pekka,
      'Hog Glider': AppAssets.hog_glider,
    };
    print(profileController.products?.troops![2].name);
    return SingleChildScrollView(
      child: Wrap(
          direction: Axis.horizontal,
          children: List.generate(
              profileController.products?.troops?.length ?? 0,
              (index) => troopsicon(
                    index,
                    troops,
                  ))),
      // child: Container(
      //     height: 400,
      //     child: ListView.builder(
      //       // scrollDirection: Axis.horizontal,
      //       itemCount: profileController.products?.troops?.length,
      //       itemBuilder: (context, index) {
      //         return Text("aiofhaf");
      //       },
      //     )
      // child: Text("aoknf"),
    );
  }
}

Widget troopsicon(
  int index,
  troops,
) {
  final ProfileController profileController = Get.put(ProfileController());

  return Padding(
    padding: EdgeInsets.all(10),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 110,
        height: 145,
        decoration: BoxDecoration(
          color: Palette.villageGridColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 30, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                troops[index].name! ==
                        profileController.products?.troops![index].name
                    ? troops[index].name
                    : '',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                profileController.products?.troops![index].name ?? '',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Palette.brown),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Level : ${profileController.products?.troops![index].level ?? ''}',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Palette.brown),
              ),
              Text(
                'Max Level : ${profileController.products?.troops![index].maxLevel ?? ''}',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Palette.brown),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
