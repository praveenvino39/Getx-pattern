import 'package:flutter_application_1/model/user_list_response.dart';
import 'package:flutter_application_1/repository/remote_repository.dart';
import 'package:flutter_application_1/screen/user_list/user_list_navigator.dart';
import 'package:get/get.dart';

class UserListViewModel extends GetxController {
  List<UserListResponse> userList = List<UserListResponse>.empty();
  String message = "";

  late UserListNavigator userListNavigator;
  RemoteRepository remoteRepository = RemoteRepository();

  @override
  void onInit() {
    remoteRepository.getAllUsers(this);
    remoteRepository.getAllUsers(this);
  }

  getUsers() async {}
}
