import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_list_response.dart';
import 'package:flutter_application_1/screen/user_detail/user_detail_screen.dart';
import 'package:flutter_application_1/screen/user_list/user_list_navigator.dart';
import 'package:flutter_application_1/screen/user_list/user_list_viewmodel.dart';
import 'package:get/get.dart';

class UserListScreen extends StatefulWidget {
  UserListScreen({Key? key}) : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen>
    with UserListNavigator {
  final UserListViewModel userListViewModel = UserListViewModel();

  @override
  void initState() {
    userListViewModel.userListNavigator = this;
    userListViewModel.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: GetBuilder<UserListViewModel>(
        init: userListViewModel,
        builder: (value) {
          if (value.userList.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: value.userList.length,
            itemBuilder: (context, position) => ListTile(
              onTap: () =>
                  value.userListNavigator.gotoDetail(value.userList[position]),
              title: Text(value.userList[position].name),
            ),
          );
        },
      ),
    );
  }

  @override
  gotoDetail(UserListResponse user) {
    Get.toNamed("/user_detail", arguments: user);
  }
}
