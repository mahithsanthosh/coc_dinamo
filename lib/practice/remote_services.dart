import 'package:coc_dynamo/practice/model.dart';
import 'package:http/http.dart' as http;

class Services {
  static var client = http.Client();

  Future<dynamic> fetchBrand() async {
    var result = await client.get(Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    // print(result);
    if (result.statusCode == 200) {
      var jsonBrand = result.body;
      // print(jsonBrand);
      return brandFromJson(jsonBrand);
    }
  }
}
