import 'dart:convert';
import 'dart:developer';
import 'package:coc_dynamo/controller/profile_controller.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/screens/profile/profile_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _valueText = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final ProfileController profileController = Get.put(ProfileController());

  dynamic data;
  Future<void> _getPlayerData(
      String tag, BuildContext context, VoidCallback onSuccess) async {
    final ProfileController profile = Get.put(ProfileController());
    // data = await profile.onInit();
    print(data);
    onSuccess.call();
    return data;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? errortext;
  String? valuate() {
    print(_valueText);

    if (_valueText.isEmpty) {
      print("error");

      errortext = 'Cant\'t be empty';
      return errortext;
    }
    if (_valueText.contains('#')) {
      print("error");

      errortext = 'Must not contain #';
      return errortext;
    }
    if (_valueText.length < 6) {
      print("error");

      errortext = 'Must be at least 6 characters';
      return errortext;
    }
    errortext = null;
    return errortext;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          key: formKey,
          child: TextFormField(
            // autofocus: true,
            focusNode: _focusNode,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Cant\'t be empty';
              }
              if (value.contains('#')) {
                return 'Must not start with #';
              }
              if (value.length < 6) {
                return 'Must be at least 6 characters';
              }
            },
            onChanged: (value) {
              setState(() {
                _valueText = value.toString();
              });
            },
            decoration: InputDecoration(
              fillColor: const Color(0xFFF0F3F7),
              filled: true,
              // errorText: _errorText(),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              labelText: 'Player Id',
              hintText: '90rj8899g',
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ElevatedButton(
            onPressed: () {
              // getApi();

              if (valuate() == null) {
                // print(_errorText());
                _getPlayerData(_valueText, context, () {
                  // print("Profile");
                  // Get.to(ProfileScreen());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                });
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: const Text(
                  "hai",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        // _focusNode.unfocus()
      ],
    );
  }
}
//todo player id 90rj8899g
