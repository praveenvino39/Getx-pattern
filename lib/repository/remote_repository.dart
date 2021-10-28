import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_list_response.dart';
import 'package:flutter_application_1/screen/user_list/user_list_viewmodel.dart';
import 'package:flutter_application_1/service/user_service.dart';
import 'package:get/get.dart';

class RemoteRepository {
  final UserService _userService = UserService();

  getAllUsers(UserListViewModel viewModel) async {
    List response = await _userService.getUserList();
    try {
      List<UserListResponse> userList = [];
      for (var element in response) {
        userList.add(UserListResponse.fromJson(element));
      }
      viewModel.userList = userList;
      viewModel.update();
    } catch (e) {
      Get.snackbar("Err", "Error occured", overlayColor: Colors.white);
    }
  }
}
