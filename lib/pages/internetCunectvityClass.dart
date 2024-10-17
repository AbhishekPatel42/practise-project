// import 'package:flutter/material.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// import 'CreateAccountApi.dart';
//
// class ConnectivityCheck extends StatefulWidget {
//   final Widget child;
//
//   const ConnectivityCheck({Key? key, required this.child}) : super(key: key);
//
//   @override
//   _ConnectivityCheckState createState() => _ConnectivityCheckState();
// }
//
// class _ConnectivityCheckState extends State<ConnectivityCheck> {
//   ConnectivityResult? _connectivityResult;
//   late final Stream<ConnectivityResult> _connectivityStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _connectivityStream = Connectivity().onConnectivityChanged as Stream<ConnectivityResult>;
//
//     // Initial check for connectivity
//     _checkConnectivity();
//
//     // Listen for connectivity changes
//     _connectivityStream.listen((result) {
//       setState(() {
//         _connectivityResult = result;
//       });
//     });
//   }
//
//   Future<void> _checkConnectivity() async {
//     _connectivityResult = (await Connectivity().checkConnectivity()) as ConnectivityResult?;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // If there's no connectivity, show the no connection screen
//     if (_connectivityResult == ConnectivityResult.none) {
//       return _noConnectionScreen();
//     }
//     return widget.child; // Show the child widget if connected
//   }
//
//   Widget _noConnectionScreen() {
//     return Scaffold(
//       appBar: AppBar(title: const Text('No Internet Connection')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.signal_wifi_off, size: 80, color: Colors.red),
//             const SizedBox(height: 20),
//             const Text(
//               'No Internet Connection',
//               style: TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 10),
//             const Text('Please check your connection.'),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'package:apiproject/pages/CreateAccountApi.dart'; // Adjust import as needed
// // import 'connectivity_check.dart'; // Ensure this imports your ConnectivityCheck class
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: ConnectivityCheck(
//         child: Createaccountapi(), // Replace with your desired initial screen
//       ),
//     );
//   }
// }
