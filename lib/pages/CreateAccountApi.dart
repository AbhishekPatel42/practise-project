// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class Createaccountapi extends StatefulWidget {
//   const Createaccountapi({super.key});
//
//   @override
//   State<Createaccountapi> createState() => _CreateaccountapiState();
// }
//
// TextEditingController usernameController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
//
// Future<void> createAccount(String username, String password) async {
//   try {
//     final response = await http.post(
//       Uri.parse("https://reqres.in/api/register"),
//       body: jsonEncode({'email': username, 'password': password}),
//     );
//
//     if (response.statusCode == 200) {
//       // Handle successful account creation
//       print("Account created successfully!");
//       // Show a success message to the user
//     } else {
//       // Handle errors from the API
//       print("Failed to create account: ${response.body}");
//       // Show an error message to the user
//     }
//   } catch (error) {
//     print("Error creating account: $error");
//     // Show a general error message to the user
//   }
// }
//
// class _CreateaccountapiState extends State<Createaccountapi> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextFormField(
//             controller: usernameController,
//             decoration: InputDecoration(
//               hintText: "Username",
//               label: Text("Username"),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             controller: passwordController,
//             decoration: InputDecoration(
//               hintText: "Password",
//               label: Text("Password"),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             //  obscureText: true, // Hide password characters
//           ),
//           SizedBox(height: 20),
//           TextButton(
//             onPressed: () {
//               createAccount(usernameController.text, passwordController.text);
//             },
//             child: Text("Create Account"),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CreateAccountApi extends StatefulWidget {
  const CreateAccountApi({super.key});

  @override
  State<CreateAccountApi> createState() => _CreateAccountApiState();
}

class _CreateAccountApiState extends State<CreateAccountApi> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Future<void> login() async {
    // Extract text from controllers to avoid encoding issues
    final String email = emailController.text;
    final String password = passController.text;

    try {
      final Response response = await http.post(
        Uri.parse("https://reqres.in/api/register"),
        body: jsonEncode({
          'email': email,
         'password': password,
        }),
      );

      if (response.statusCode == 200) {
        print("Account created successfully!");
      } else {
        print("Failed to create account: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          TextFormField(
            controller: passController,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: login,
            child: const Text("Create Account"), // Changed to "Create Account" for clarity
          ),
        ],
      ),
    );
  }
}