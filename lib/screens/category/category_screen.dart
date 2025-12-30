import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final List<String> categories = [
    "Electronics",
    "Fashion",
    "Beauty",
    "Sports",
    "Grocery",
    "Home Decor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories")),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: categories.length,
        itemBuilder: (_, i) {
          return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Text(
              categories[i],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          );
        },
      ),
    );
  }
}
