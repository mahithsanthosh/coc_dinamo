import 'package:coc_dynamo/misc/palette.dart';
import 'package:coc_dynamo/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'dynamo',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Palette.kScaffoldBackground,
          appBarTheme:
              const AppBarTheme(backgroundColor: Palette.kAppBarTheme)),
      home: const SearchScreen(),
    );
  }
}
