import 'package:flutter/material.dart';
// ignore: unused_import
import '../../widgets/product_card.dart';

class CategoryProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)?.settings.arguments as String? ?? 'Category';
    final products = List.generate(
      6,
      (i) => {
        'name': '$category Item ${i + 1}',
        'price': '${20 + i * 10}',
        'img': 'assets/products/p${i + 1}.png',
      },
    );
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .72,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (_, i) {
            final p = products[i];
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/productDetails'),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Expanded(child: Image.asset(p['img']!, fit: BoxFit.cover)),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        p['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '\$${p['price']}',
                        style: TextStyle(color: Color(0xFF6A00F4)),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
