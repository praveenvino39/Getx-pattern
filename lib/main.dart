import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/user_detail/user_detail_screen.dart';
import 'package:flutter_application_1/screen/user_list/user_list_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: UserListScreen(),
      getPages: [
        GetPage(name: '/user_detail', page: () => const UserDetailScreen())
      ],
    );
  }
}
