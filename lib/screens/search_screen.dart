import 'package:coc_dynamo/misc/palette.dart';
import 'package:coc_dynamo/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dinamo"),
      ),
      body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(3, 5, 3, 20),
          child: Expanded(
            // constraints: BoxConstraints(
            //   maxHeight: MediaQuery.of(context).size.height * .96,
            //   minWidth: MediaQuery.of(context).size.width,
            // ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff222222),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GradientText(
                    'Provide your player tag',
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                    colors: const [
                      Color(0xff29C29B),
                      Color(0xffE0CD73),
                    ],
                  ),
                  const Image(
                    image: AssetImage(
                        'asset/images/clash-of-clans-female-archer-removebg-preview.png'),
                    height: 400,
                    width: 400,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SearchBar(),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
