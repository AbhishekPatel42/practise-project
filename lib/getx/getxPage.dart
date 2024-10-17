// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// // Assuming you have a paginationApi.dart file; if not, you can remove this import.
// import 'Compolants/getxCompolance.dart';
//
// // Main page class
// class GetxPage extends StatefulWidget {
//   const GetxPage({super.key});
//
//   @override
//   State<GetxPage> createState() => _GetxPageState();
// }
//
// class _GetxPageState extends State<GetxPage> {
//   final GetxComponants controller = Get.put(GetxComponants());
//   final OpeCity opacityController = Get.put(OpeCity());
//   final Switchbatton switchbattonnn = Get.put(Switchbatton());
//
//   @override
//   Widget build(BuildContext context) {
//     print("Rebuilding UI...");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("GetX Snackbar Example"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center, // Center the content
//         children: [
//           Center(
//             child: Obx(
//                   () => Text(
//                 controller.counter.toString(),
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//           Obx(
//                 () => Container(
//               height: 200,
//               width: 300,
//               color: Colors.red.withOpacity(opacityController.opcity.value),
//             ),
//           ),
//           Obx(
//                 () => Slider(
//               value: opacityController.opcity.value,
//               onChanged: (value) {
//                 opacityController.setOpacity(value); // Set new opacity value
//               },
//               min: 0.0, // Minimum value for the slider
//               max: 1.0, // Maximum value for the slider
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center, // Center the row
//             children: [
//               const Text("Exl"),
//               Obx(
//                     () => Switch(
//                   value: switchbattonnn.notification.value,
//                   onChanged: (value) {
//                     switchbattonnn.setNotification(value); // Update notification value
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           controller.incrementCounter();
//         },
//         child: const Icon(Icons.add,), // Icon for the FAB
//       ),
//     );
//   }
// }
//
// // Switchbatton class
// class Switchbatton extends GetxController {
//   RxBool notification = false.obs; // Initialize notification value
//
//   void setNotification(bool value) {
//     notification.value = value; // Update the notification value
//   }
// }
