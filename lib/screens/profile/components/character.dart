import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

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
                          Image.asset("lib/img/Barbarian.png"),
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                                "Barbarian"),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                "This fearless warrior relies on his bulging muscles and striking mustache to wreak havoc in enemy villages."),
                          )
                        ],
                      ))))),
    );
  }
}
