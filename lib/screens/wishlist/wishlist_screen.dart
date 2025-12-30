import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final items = [
    {'title': 'Men Shoes', 'img': 'assets/products/shoe.png'},
    {'title': 'Smart Headphone', 'img': 'assets/products/headphone.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wishlist')),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: items.length,
        separatorBuilder: (_, __) => SizedBox(height: 10),
        itemBuilder: (_, i) {
          final it = items[i];
          return Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Image.asset(it['img']!, width: 60),
                SizedBox(width: 12),
                Text(
                  it['title']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
          );
        },
      ),
    );
  }
}
