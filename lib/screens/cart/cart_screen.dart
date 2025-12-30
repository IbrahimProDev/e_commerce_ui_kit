import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';

class CartPage extends StatelessWidget {
  final cart = [
    {'name': 'Smart Watch', 'price': '120', 'img': 'assets/products/watch.png'},
    {
      'name': 'Headphone',
      'price': '89',
      'img': 'assets/products/headphone.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(12),
              itemCount: cart.length,
              separatorBuilder: (_, __) => SizedBox(height: 8),
              itemBuilder: (_, i) {
                final it = cart[i];
                return Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        it['img']!,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            it['name']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text('\$${it['price']}'),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.add_circle_outline),
                          ),
                          IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.remove_circle_outline),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '\$209.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF6A00F4),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                AppButton(
                  text: 'Proceed to Checkout',
                  onTap: () => Navigator.pushNamed(context, '/checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
