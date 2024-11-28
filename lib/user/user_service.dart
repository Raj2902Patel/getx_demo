import 'package:getx_demo/user/user_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<List<UserModel>> fetchUsersData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    if (response.statusCode == 200) {
      return userModelFromJson(response.body);
    } else {
      throw Exception("Network Error");
    }
  }
}
