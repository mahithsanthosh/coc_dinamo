import 'package:coc_dynamo/controller/api_client.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../model.dart';

class RemoteServices {
  // static var client = http.Client();

  // static fetchProducts() async {
  //   String token =
  //       "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjI4OTFlZDhkLTU4NTctNDY0MS1iOTk1LTEyNGNkMDg3ODhhZSIsImlhdCI6MTY3NDE4OTg0OSwic3ViIjoiZGV2ZWxvcGVyLzYxZmE0OTE4LWM4ZDQtYjdiOS02YmFhLTkzOGM5MGYyMmVjMyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjExNy4yMzkuMjUxLjU4Il0sInR5cGUiOiJjbGllbnQifV19.IVAzANtZ2G_578gfa4ozZ293B_qKhjOH2vQ_z4qkPrbNIhLTp06ij2Vlva-_voJUeBiGfLIG8BYZoyLCXvm1yw";
  //   var response = await client.get(
  //       Uri.parse('https://api.clashofclans.com/v1/players/%2390RJ8899G'),
  //       headers: {
  //         'content-Type': "application/json",
  //         "authorization": "Bearer $token"
  //       });
  //   if (response.statusCode == 200) {
  //     var jsonString = productFromJson(response.body);
  //     print(jsonString);
  //     return jsonString;
  //   } else {
  //     //show error message
  //     return response.statusCode;
  //   }
  // }

  Dio dio = Dio();
  Product? profiledata;
  ApiClient api = new ApiClient();
  var isDataLoading = false;
  Future<dynamic> getPlayer(String tag) async {
    isDataLoading = true;
    dio.options.headers['Authorization'] =
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjI4OTFlZDhkLTU4NTctNDY0MS1iOTk1LTEyNGNkMDg3ODhhZSIsImlhdCI6MTY3NDE4OTg0OSwic3ViIjoiZGV2ZWxvcGVyLzYxZmE0OTE4LWM4ZDQtYjdiOS02YmFhLTkzOGM5MGYyMmVjMyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjExNy4yMzkuMjUxLjU4Il0sInR5cGUiOiJjbGllbnQifV19.IVAzANtZ2G_578gfa4ozZ293B_qKhjOH2vQ_z4qkPrbNIhLTp06ij2Vlva-_voJUeBiGfLIG8BYZoyLCXvm1yw';
    dio.options.headers['content-Type'] = 'application/json';
    print("auiofhaoihfajfopiajfpaimfajfpojiafiojafajf");
    try {
      final response = await dio.get('${api.baseUrl}v1/players/%2390rj8899g');

      // final response = await dio.get('${super.baseUrl}v1/players/%23$tag');

      if (response.statusCode == 200) {
        profiledata = Product.fromJson(response.data);
        // print(profiledata?.clan!.name);
        isDataLoading = false;
        return profiledata;
      }
    } catch (e) {
      isDataLoading = false;
      return 'Error: ${e.toString()}';
    }
  }
}
