import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> product = {
      'name': 'Smart Watch Pro',
      'price': '120',
      'img': 'assets/products/watch.png',
      'desc': 'High quality smart watch with multiple features.',
    };
    return Scaffold(
      appBar: AppBar(title: Text(product['name']!)),
      body: Column(
        children: [
          Expanded(child: Image.asset(product['img']!, fit: BoxFit.contain)),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black12)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product['name']!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  '\$${product['price']}',
                  style: TextStyle(
                    color: Color(0xFF6A00F4),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(product['desc']!),
                SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Add to Cart',
                        onTap: () => Navigator.pushNamed(context, '/cart'),
                      ),
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/wishlist'),
                      child: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
