import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  final reviews = List.generate(
    5,
    (i) => {'user': 'User ${i + 1}', 'text': 'Good product, liked it.'},
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: reviews.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (_, i) {
          final r = reviews[i];
          return ListTile(
            leading: CircleAvatar(child: Text(r['user']![5])),
            title: Text(r['user']!),
            subtitle: Text(r['text']!),
          );
        },
      ),
    );
  }
}
