import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_list_response.dart';
import 'package:get/get.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);
  // final UserListResponse userListResponse;

  @override
  Widget build(BuildContext context) {
    final currentUser = Get.arguments as UserListResponse;
    return Scaffold(
      appBar: AppBar(
        title: Text(currentUser.name),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.manage_accounts_sharp,
                size: 50,
              ),
              Text(
                currentUser.name,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
          Text(
            currentUser.phone,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
