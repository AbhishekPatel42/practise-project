import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PaginationApi extends StatefulWidget {
  const PaginationApi({super.key});

  @override
  State<PaginationApi> createState() => _PaginationApiState();
}

class _PaginationApiState extends State<PaginationApi> {
  List<Item> _items = [];
  int _page = 1;
  bool _isLoading = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _fetchItems();
      }
    });
  }

  Future<void> _fetchItems() async {
    if (_isLoading) return; // Prevent multiple requests

    setState(() {
      _isLoading = true;
    });

    try {
      final newItems = await fetchItems(_page);
      setState(() {
        _items.addAll(newItems);
        _page++;
      });
    } catch (error) {
      print("Error fetching items: $error");
      // You can also show an error message to the user
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagination Example")),
      body: ListView.builder(
        itemCount: _items.length + (_isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < _items.length) {
            print("${_items}");
            return ListTile(
              title: Text(_items[index].title ?? "No Title"),
              subtitle: Text(_items[index].body ?? "No Body"),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        controller: _scrollController,
      ),
    );
  }
}

Future<List<Item>> fetchItems(int page) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_page=$page&_limit=10'));
  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((item) => Item.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load items');
  }
}

class Item {
  int? userId;
  int? id;
  String? title;
  String? body;

  Item({this.userId, this.id, this.title, this.body});

  Item.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
