import 'package:coc_dynamo/constants/app_pallette.dart';
import 'package:coc_dynamo/constants/app_strings.dart';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TroopsSection extends StatelessWidget {
  const TroopsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Profile Store
    // final _profileStore = getIt.get<ProfileStore>();
    final ProfileController profileController = Get.put(ProfileController());

    // Profile Data
    // Profile? _profile = _profileStore.profile;

    // Troops
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

    // Heroes List
    List? heroes = profileController.products?.heroes;
    // Village Troops
    List? villageTroops = profileController.products?.troops
        ?.where((element) => element.village == 'home')
        .toList();
    print(villageTroops);
    // Super Troops
    const superTroopsFilters = [
      'Super',
      'Inferno',
      'Rocket',
      'Ice Hound',
      'Sneaky'
    ];
    List? superTroops = [];

    // Super Troops List filter by superTroopsFilters list and add to superTroops list
    // for (var i = 0; i < _profile?.troops?.length ; i++) {
    //   for (var j = 0; j < superTroopsFilters.length; j++) {
    //     if (_profile.troops![i].name!.contains(superTroopsFilters[j])) {
    //       // Add to superTroops list
    //       superTroops.add(_profile?.troops![i]);

    //       // Remove from villageTroops list
    //       int index = villageTroops!.indexOf(_profile?.troops![i]);

    //       if (index != -1) {
    //         villageTroops.removeAt(index);
    //       }
    //     }
    //   }
    // }
    print(heroes?[1].name);
    print(troops);
    // Builder Hall Troops
    List? builderHallTroops = profileController.products?.troops
        ?.where((element) => element.village == 'builderBase')
        .toList();

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text("heroes",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Palette.brown)),
      ),
      SizedBox(
        height: 16,
        width: 1,
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
                  Image.asset(troops[1] ?? '',

                      // troopsObject[list[index].name! ?? ''],
                      scale: 3.5),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    profileController.products?.troops![1].name ?? '',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Palette.brown),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Level : ${profileController.products?.troops![1]?.level ?? ''}',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Palette.brown),
                  ),
                  Text(
                    'Max Level : ${profileController.products!.troops![0]?.maxLevel ?? ''}',
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
      )
    ]);

// =======================================================================
    //   return Column(
    //     children: [
    //       Text("data"),
    //       // customTroopsList(heroes, 'Heroes', troops),
    // ignore: prefer_const_constructors
    //       SizedBox(height: 13),
    //       // customTroopsList(villageTroops, 'Village Troops', troops),
    //       // SizedBox(height: 13),
    //       // customTroopsList(superTroops, 'Super Troops', troops),
    //       // SizedBox(height: 13),
    //       // customTroopsList(builderHallTroops, 'Builder Hall Troops', troops),
    //       // SizedBox(height: 13),
    //     ],
    //   );
    // }

// Widget customTroops(List? list)

//   Widget customTroopsList(List? list, String title, var troopsObject) {
//     return Padding(
//       padding: EdgeInsets.only(right: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 5),
//             child: Text(title,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w600,
//                     color: Palette.brown)),
//           ),
//           SizedBox(
//             height: 16,
//             width: 1,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: list!.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                   child: Container(
//                     width: 110,
//                     height: 145,
//                     decoration: BoxDecoration(
//                       color: Palette.villageGridColor,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(right: 30, top: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset(
//                             troopsObject[list[index].name! ?? ''],
//                             scale: title == 'Super Troops'
//                                 ? 3.5
//                                 : title == 'Builder Hall Troops'
//                                     ? 3
//                                     : title == 'Heroes'
//                                         ? 4
//                                         : 2,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             list[index].name ?? '',
//                             style: TextStyle(
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                                 color: Palette.brown),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Level : ${list[index].level ?? ''}',
//                             style: TextStyle(
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                                 color: Palette.brown),
//                           ),
//                           Text(
//                             'Max Level : ${list[index].maxLevel ?? ''}',
//                             style: TextStyle(
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                                 color: Palette.brown),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
  }
}
