import 'package:coc_dynamo/screens/profile/components/character.dart';
import 'package:coc_dynamo/screens/profile/profile_screen.dart';
import 'package:coc_dynamo/screens/searchscreen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'dynamo',
      home: const SearchScreen(),
    );
  }
}
