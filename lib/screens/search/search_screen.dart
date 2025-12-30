import 'package:flutter/material.dart';
// ignore: unused_import
import '../../widgets/product_card.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController ctl = TextEditingController();

  List<Map<String, String>> results = [
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
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // SEARCH BOX
            TextField(
              controller: ctl,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search products...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 12),

            // RESULTS GRID
            Expanded(
              child: GridView.builder(
                itemCount: results.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.72,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (_, i) {
                  final p = results[i];

                  return GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, '/productDetails'),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(p['img']!, fit: BoxFit.cover),
                          ),
                          SizedBox(height: 8),
                          Text(
                            p['name']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$${p['price']}',
                            style: TextStyle(color: Color(0xFF6A00F4)),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
