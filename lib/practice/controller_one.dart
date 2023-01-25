// ignore_for_file: prefer_collection_literals

import 'package:coc_dynamo/practice/remote_services.dart';
import 'package:coc_dynamo/services/remote_services.dart';
import 'package:get/state_manager.dart';

import 'model.dart';

class BrandController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var brandList = <Brand>[].obs;

  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  void fetch() async {
    try {
      isLoading(true);
      var brands = await Services().fetchBrand();
      // print(brands);
      if (brands != null) {
        brandList.assignAll(brands);
        print(brandList[0].imageLink);
      }
    } finally {
      isLoading(false);
    }
  }
}
