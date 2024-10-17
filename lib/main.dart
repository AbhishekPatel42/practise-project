import 'package:apiproject/pages/Googlepe.dart';
import 'package:apiproject/pages/paginationApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:apiproject/pages/CreateAccountApi.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'getx/getxPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set initial page here, consider using named routes if needed
      home: Googlepe(),
      // Uncomment this if you want to define named routes

      // getPages: [
      //   GetPage(name: '/', page: () => GetxPage()),
      //   GetPage(name: '/createAccount', page: () => CreateAccountApi()),
      //  // GetPage(name: '/getApi', page: () => GetApi()),
      //   GetPage(name: '/paginationApi', page: () => PaginationApi()),
      // ],

    );
  }
}
