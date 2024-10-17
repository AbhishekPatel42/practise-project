// import 'dart:async';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class apiBaseModel {
//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   Address? address;
//   String? phone;
//   String? website;
//   Company? company;
//
//   apiBaseModel(
//       {this.id,
//         this.name,
//         this.username,
//         this.email,
//         this.address,
//         this.phone,
//         this.website,
//         this.company});
//
//   apiBaseModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     username = json['username'];
//     email = json['email'];
//     address =
//     json['address'] != null ? new Address.fromJson(json['address']) : null;
//     phone = json['phone'];
//     website = json['website'];
//     company =
//     json['company'] != null ? new Company.fromJson(json['company']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['username'] = this.username;
//     data['email'] = this.email;
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     data['phone'] = this.phone;
//     data['website'] = this.website;
//     if (this.company != null) {
//       data['company'] = this.company!.toJson();
//     }
//     return data;
//   }
// }
//
// class Address {
//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;
//
//   Address({this.street, this.suite, this.city, this.zipcode, this.geo});
//
//   Address.fromJson(Map<String, dynamic> json) {
//     street = json['street'];
//     suite = json['suite'];
//     city = json['city'];
//     zipcode = json['zipcode'];
//     geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['street'] = this.street;
//     data['suite'] = this.suite;
//     data['city'] = this.city;
//     data['zipcode'] = this.zipcode;
//     if (this.geo != null) {
//       data['geo'] = this.geo!.toJson();
//     }
//     return data;
//   }
// }
//
// class Geo {
//   String? lat;
//   String? lng;
//
//   Geo({this.lat, this.lng});
//
//   Geo.fromJson(Map<String, dynamic> json) {
//     lat = json['lat'];
//     lng = json['lng'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lat'] = this.lat;
//     data['lng'] = this.lng;
//     return data;
//   }
// }
//
// class Company {
//   String? name;
//   String? catchPhrase;
//   String? bs;
//
//   Company({this.name, this.catchPhrase, this.bs});
//
//   Company.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     catchPhrase = json['catchPhrase'];
//     bs = json['bs'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['catchPhrase'] = this.catchPhrase;
//     data['bs'] = this.bs;
//     return data;
//   }
// }
//
// //
// // // import 'package:flutter/material.dart';
// // // import 'package:connectivity_plus/connectivity_plus.dart';
// //
// // class ConnectivityCheck extends StatefulWidget {
// //   final Widget child;
// //
// //   const ConnectivityCheck({Key? key, required this.child}) : super(key: key);
// //
// //   @override
// //   _ConnectivityCheckState createState() => _ConnectivityCheckState();
// // }
// //
// // class _ConnectivityCheckState extends State<ConnectivityCheck> {
// //   ConnectivityResult? _connectivityResult;
// //   late final Stream<ConnectivityResult> _connectivityStream;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     //_connectivityStream = Connectivity().onConnectivityChanged;
// //     _checkConnectivity();
// //   }
// //
// //   Future<void> _checkConnectivity() async {
// //     //_connectivityResult = await Connectivity().checkConnectivity();
// //     setState(() {});
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder<ConnectivityResult>(
// //       stream: _connectivityStream,
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.active) {
// //           // Check the current connectivity status
// //           if (snapshot.data == ConnectivityResult.none) {
// //             return _noConnectionScreen();
// //           }
// //         }
// //         return widget.child; // Show the child widget if connected
// //       },
// //     );
// //   }
// //
// //   Widget _noConnectionScreen() {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('No Internet Connection')),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(Icons.signal_wifi_off, size: 80, color: Colors.red),
// //             const SizedBox(height: 20),
// //             const Text(
// //               'No Internet Connection',
// //               style: TextStyle(fontSize: 24),
// //             ),
// //             const SizedBox(height: 10),
// //             const Text('Please check your connection.'),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
