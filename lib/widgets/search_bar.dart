import 'dart:convert';
import 'dart:developer';

import 'package:coc_dynamo/model/fetch.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/screens/profile_screen.dart';
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
  var isDataLoading = false.obs;

  getApi() async {
    var dio = new Dio();
    String url = 'https://api.clashofclans.com/v1/players/%2390RJ8899G';
    String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImEyYTZmNTExLTgwYTYtNDIyMS1hODA1LTNhMDNkM2FjZTkxYSIsImlhdCI6MTY3MzU4OTk5Niwic3ViIjoiZGV2ZWxvcGVyLzcxYzU0YjEwLWZiOTAtYzcyNy00MzJhLTgxNDVlMWU4NjMyMCIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjExNy4yMzkuMjUxLjU4Il0sInR5cGUiOiJjbGllbnQifV19.A6hobTPkJauuXLE9jJ5PjVuFPPxMOLXdZctcsgZogs_4c2oifp7Tk_2ktUfsqcqn6FENdh0t_27HydPUbEdNrQ";
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["authorization"] = "Bearer ${token}";
    print("inside getapi");
    try {
      isDataLoading(true);

      final response = await dio.get(url);
      // final response = await dio.get(
      //     ('https://api.clashofclans.com/v1/players/%2390RJ8899G'),
      //     headers: {
      //       "Accept": "application/json",
      //       "Authorization":
      //           'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImEyYTZmNTExLTgwYTYtNDIyMS1hODA1LTNhMDNkM2FjZTkxYSIsImlhdCI6MTY3MzU4OTk5Niwic3ViIjoiZGV2ZWxvcGVyLzcxYzU0YjEwLWZiOTAtYzcyNy00MzJhLTgxNDVlMWU4NjMyMCIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjExNy4yMzkuMjUxLjU4Il0sInR5cGUiOiJjbGllbnQifV19.A6hobTPkJauuXLE9jJ5PjVuFPPxMOLXdZctcsgZogs_4c2oifp7Tk_2ktUfsqcqn6FENdh0t_27HydPUbEdNrQ'
      //     });

      // Dio.Response response = await Dio.get(
      //     Uri.parse('https://api.clashofclans.com/v1/players/%2390RJ8899G'),
      //     headers: {
      //       "Accept": "application/json",
      //       "Authorization":
      //           'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImEyYTZmNTExLTgwYTYtNDIyMS1hODA1LTNhMDNkM2FjZTkxYSIsImlhdCI6MTY3MzU4OTk5Niwic3ViIjoiZGV2ZWxvcGVyLzcxYzU0YjEwLWZiOTAtYzcyNy00MzJhLTgxNDVlMWU4NjMyMCIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjExNy4yMzkuMjUxLjU4Il0sInR5cGUiOiJjbGllbnQifV19.A6hobTPkJauuXLE9jJ5PjVuFPPxMOLXdZctcsgZogs_4c2oifp7Tk_2ktUfsqcqn6FENdh0t_27HydPUbEdNrQ'
      //     });
      // if (response.statusCode == 200) {
      ///data successfully
      print("inside getapi");
      print(response);

      var result = jsonDecode(response as String);
      print(result);
      // user_model = User_Model.fromJson(result);
      // } else {
      ///error
      // }

    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }

  // dynamic profiledata;
  Future<void> _getPlayerData(
      String tag, BuildContext context, VoidCallback onSuccess) async {
    final ProfileClient profile = new ProfileClient();
    print(tag);
    await profile.getPlayer(tag);
    onSuccess.call();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? get _errorText {
    if (_valueText.isEmpty && _focusNode.hasFocus) {
      return 'Cant\'t be empty';
    }
    if (_valueText.contains('#') && _focusNode.hasFocus) {
      return 'Must not contain #';
    }
    if (_valueText.length < 6 && _focusNode.hasFocus) {
      return 'Must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15),
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
                // Update the value of the text
                _valueText = value.toString();

                // set iserror to false
                // _profileStore.isError = false;
              });
            },
            decoration: InputDecoration(
              fillColor: const Color(0xFFF0F3F7),
              filled: true,
              errorText: _errorText,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              labelText: 'Player Id',
              hintText: '60YB5K',
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ElevatedButton(
            onPressed: () {
              print("object");
              // if (formKey.currentState!.validate()) {
              // getApi();
              _getPlayerData(_valueText, context, () {
                print("Profile");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ProfileScreen(),
                //   ),
                // );
              });
              // _getPlayerData(_controller.text, context, () {
              //   // Navigate to the profile screen if the profile data is fetched successfully
              //   // if (_profileStore.isError == false) {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const ProfileScreen(),
              //   ),
              // );
              //   // }
              // });
              // }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
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
