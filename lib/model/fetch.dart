import 'package:coc_dynamo/model/api_client.dart';
import 'package:coc_dynamo/model/profile.dart';

class ProfileClient extends ApiClient {
  Future<dynamic> getPlayer(String tag) async {
    dio.options.headers['Authorization'] = 'Bearer ${apiKey}';
    dio.options.headers['content-Type'] = 'application/json';
    print("auiofhaoihfajfopiajfpaimfajfpojiafiojafajf");
    try {
      final response = await dio.get('${super.baseUrl}v1/players/%23$tag');

      final profile = Profile.fromJson(response.data);
      print(profile.attackWins);

      return profile;
    } catch (e) {
      return 'Error: ${e.toString()}';
    }
  }
}
