//
//
// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:http/http.dart'as http;
// import 'package:http/http.dart';
//
// class GetxComponants extends GetxController {
//
//   RxInt counter = 1.obs;
//
//   incrementCounter(){
//
//     counter.value++ ;
//     print(counter.value);
//
//   }
//
// }
//
// class OpeCity extends GetxController {
//   RxDouble opcity = .4.obs;
//
//   setOpacity(double value ){
//     opcity.value = value;
//   }
//
// }
//
// class Switchbatton extends GetxController {
//
//   RxBool notification = false.obs;
//
//   setNotification (bool value){
//     notification.value;
//   }
//
// }
//
// class Textcontroller extends GetxController {
//
//  final emailController = Textcontroller().obs;
//  final passController = Textcontroller().obs;
//
//  void loginApi ()async {
//
//    try{
//
//      final response = await post(Uri.parse("https://reqres.in/api/register"),
//
//      body: {
//        'email': emailController.value,
//        'passowrd': passController.value,
//          },);
//
//          var data = jsonDecode(response.body);
//      if (response.statusCode ==200){
//        Get.snackbar('Login Successfull ',data['error']);
//      }else{
//        Get.snackbar('Login Unsuccessfull');
//      }
//
//    }catch(e){
//
//      Get.snackbar('${e}Login Unsuccessfull');
//
//    }
//
//  }
//
// }