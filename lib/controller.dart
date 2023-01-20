// ignore_for_file: prefer_collection_literals

import 'package:coc_dynamo/services/remote_services.dart';
import 'package:get/state_manager.dart';

import 'model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productList = <Product>[].obs;
  late Product products;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      products = await RemoteServices().getPlayer("90rj8899g");
      print(products.expLevel);
      if (products != null) {
        // productList.value = products as List<Product>;
        print(products.achievements);
      }
    } finally {
      isLoading(false);
    }
  }
}
