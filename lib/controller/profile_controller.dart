// import 'dart:convert';

// import 'package:coc_dynamo/controller/api_client.dart';
// import 'package:coc_dynamo/model/profile.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';

// class ProfileController extends GetxController {
//   Dio dio = Dio();
//   // Profile? profiledata;
//   // var profile = <Profile>[].obs;
//   Profile? profile;

//   ApiClient api = new ApiClient();
//   var isDataLoading = false;
//   Future<dynamic> getPlayer(String tag) async {
//     isDataLoading = true;
//     dio.options.headers['Authorization'] = 'Bearer ${api.apiKey}';
//     dio.options.headers['content-Type'] = 'application/json';
//     try {
//       final response = await dio.get('${api.baseUrl}v1/players/%2390rj8899g');

//       print("auiofhaoihfajfopiajfpaimfajfpojiafiojafajf");
//       // final response = await dio.get('${super.baseUrl}v1/players/%23$tag');

//       if (response.statusCode == 200) {
//         profile = Profile.fromJson(response.data);
//         print(profile?.achievements);
//         isDataLoading = false;
//         return profile;
//       }
//     } catch (e) {
//       isDataLoading = false;
//       return 'Error: ${e.toString()}';
//     }
//   }
// }
// ignore_for_file: prefer_collection_literals

import 'package:coc_dynamo/model/profile.dart';
import 'package:coc_dynamo/services/remote_services.dart';
import 'package:get/state_manager.dart';

class ProfileController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productList = <Profile>[].obs;
  Profile? products;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    print("inside fetch ");
    try {
      isLoading(true);
      products = await RemoteServices().getPlayer("90rj8899g");
      print(products?.expLevel);
      if (products != null) {
        // productList.value = products as List<Product>;
        print(products?.achievements);
      }
    } finally {
      isLoading(false);
    }
  }
}
