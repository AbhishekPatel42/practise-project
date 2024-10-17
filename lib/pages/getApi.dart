// // import 'ModelClass.dart';
// //
// // class HomeApi extends StatefulWidget {
// //   const HomeApi({super.key});
// //
// //   @override
// //   State<HomeApi> createState() => _HomeApiState();
// // }
// //
// // class _HomeApiState extends State<HomeApi> {
// //   List<apiBaseModel> ApiBaseModel = [];
// //
// //    Future<List<apiBaseModel>> getData() async{
// //     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
// //     var data = jsonDecode(response.body.toString());
// //
// //     if(response.statusCode ==200){
// //        print(json.encode(response.body));
// //        for (var item in data){
// //          ApiBaseModel.add(apiBaseModel.fromJson(item));
// //        }
// //     }return ApiBaseModel;
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FutureBuilder(
// //         future: getData(),
// //         builder: (context ,snapshot) {
// //           if (snapshot.hasData){
// //             return ListView.builder(
// //                 itemCount: ApiBaseModel.length,
// //                 itemBuilder:  (context, index) {
// //
// //                   return Column(
// //                     children: [
// //                       Text("id: ${ApiBaseModel[index].id}"),
// //                       SizedBox(height: 10,),
// //                       Text("Title: ${ApiBaseModel[index].title}"),
// //                       SizedBox(height: 10,),
// //                       Text("userId: ${ApiBaseModel[index].userId}"),
// //                       SizedBox(height: 10,),
// //                       Text("body: ${ApiBaseModel[index].body}"),
// //                     ],
// //                   );
// //                 }
// //             );
// //           }
// //           else{
// //             return Center(child: CircularProgressIndicator(),);
// //           }
// //         }
// //       ),
// //     );
// //   }
// // }
// // import 'dart:convert';
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'ModelClass.dart';
// import 'package:flutter/material.dart';
// //
// // class HomePagegetData extends StatefulWidget {
// //   const HomePagegetData({super.key});
// //
// //   @override
// //   State<HomePagegetData> createState() => _HomePagegetDataState();
// // }
// //
// //  List<apiBaseModel> ApiBaseModel = [];
// //
// // Future<List<apiBaseModel>> getData () async {
// //   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
// //   var data = jsonDecode(response.body.toString());
// //   if (response.statusCode == 200){
// //     print(json.encode(response.body));
// //     for (var item in data){
// //       ApiBaseModel.add(apiBaseModel.fromJson(item));
// //     }
// //   }return ApiBaseModel;
// // }
// //
// // class _HomePagegetDataState extends State<HomePagegetData> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           FutureBuilder(future: getData(), builder: (context, snapshot) {
// //             if (snapshot.hasData){
// //               return Column(
// //                 children: [
// //                   Expanded(
// //                     child: ListView.builder(
// //                         itemCount: ApiBaseModel.length,
// //                         itemBuilder:  (context, index) {
// //                           return Column(
// //                             children: [
// //                               Text("id: ${ApiBaseModel[index].id}"),
// //                               SizedBox(height: 10,),
// //                               Text("Title: ${ApiBaseModel[index].email}"),
// //                               SizedBox(height: 10,),
// //                               Text("userId: ${ApiBaseModel[index].body}"),
// //                               SizedBox(height: 10,),
// //                               Text("body: ${ApiBaseModel[index].name}"),
// //                               Text("body: ${ApiBaseModel[index].postId}"),
// //                             ],
// //                           );
// //                         }
// //                     ),
// //                   ),
// //
// //                 ],
// //               );
// //             }else
// //            { return Center(child: CircularProgressIndicator(),);
// //           }}
// //           ,),
// //           if (ApiBaseModel.length >= 3) Text("${ApiBaseModel[2].name}"),
// //           Text("${ApiBaseModel[3].name}")
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// class Getapi extends StatefulWidget {
//   const Getapi({super.key});
//
//   @override
//   State<Getapi> createState() => _GetapiState();
// }
//
// List <apiBaseModel> ApiBaseModel =[];
//
// Future <List<apiBaseModel>> getData () async {
//   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
//   var data = jsonDecode(response.body.toString());
//   if (response.statusCode ==200){
//     print(json.encode(response.body));
//     for (var item in data){
//          ApiBaseModel.add(apiBaseModel.fromJson(item));
//        }
//   }return ApiBaseModel;
// }
//
// class _GetapiState extends State<Getapi> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(future: getData(), builder: (context, snapshot) {
//         if (snapshot.hasData){
//           return ListView.builder(
//             itemCount: ApiBaseModel.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Text("Title:${ApiBaseModel[index].id}"),
//                   Text("Title:${ApiBaseModel[index].name}"),
//                   Text("Title:${ApiBaseModel[index].email}"),
//                   Text("Title:${ApiBaseModel[index].address?.city}"),
//                   Text("Title:${ApiBaseModel[index].address?.geo}"),
//                   Text("Title:${ApiBaseModel[index].phone}"),
//                   Text("Title:${ApiBaseModel[index].website}"),
//                   // ListTile(
//                   //   // leading: Image(image: AssetImage("${ApiBaseModel[index].thumbnailUrl}")),
//                   //   //leading: Image.network(ApiBaseModel[index]. ?? '', width: 50, height: 50),
//                   //   title: Text("Title:${ApiBaseModel[index].name}"),
//                   //   subtitle: Text("Subtitle:${ApiBaseModel[index].email}"),
//                   //   subtitle: Text("Subtitle:${ApiBaseModel[index].email}"),
//                   //)
//                 ],
//               );
//             },
//           );
//         }return Center(child: CircularProgressIndicator(),);
//       },),
//     );
//   }
// }
