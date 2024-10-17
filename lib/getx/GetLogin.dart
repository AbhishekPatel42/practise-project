// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import 'Compolants/getxCompolance.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   Textcontroller controller = Get.put(Textcontroller());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             //controller: controller.emailController.value,
//             decoration: InputDecoration(
//                 hintText: "Email",
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12))),
//           ),
//           TextFormField(
//             //controller: controller.passController.value,
//             decoration: InputDecoration(
//               hintText: "Email",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               controller.loginApi();
//             },
//             child: Text("Login"),
//           )
//         ],
//       ),
//     );
//   }
// }
