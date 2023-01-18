import 'dart:convert';

import 'package:coc_dynamo/controller/api_client.dart';
import 'package:coc_dynamo/model/profile.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Dio dio = Dio();
  Profile? profiledata;
  ApiClient api = new ApiClient();
  var isDataLoading = false;
  Future<dynamic> getPlayer(String tag) async {
    isDataLoading = true;
    dio.options.headers['Authorization'] = 'Bearer ${api.apiKey}';
    dio.options.headers['content-Type'] = 'application/json';
    print("auiofhaoihfajfopiajfpaimfajfpojiafiojafajf");
    try {
      final response = await dio.get('${api.baseUrl}v1/players/%2390rj8899g');

      // final response = await dio.get('${super.baseUrl}v1/players/%23$tag');

      if (response.statusCode == 200) {
        profiledata = Profile.fromJson(response.data);
        print(profiledata?.expLevel);
        isDataLoading = false;
        return profiledata;
      }
    } catch (e) {
      isDataLoading = false;
      return 'Error: ${e.toString()}';
    }
  }
}
