import 'package:get/get.dart';

class UserService extends GetConnect {
  Future<dynamic> getUserList() async {
    var response =
        await httpClient.get("https://jsonplaceholder.typicode.com/users");
    return response.body;
  }
}
