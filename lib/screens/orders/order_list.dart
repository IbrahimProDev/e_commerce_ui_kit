import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  final orders = List.generate(
    6,
    (i) => {
      'id': '#${1000 + i}',
      'status': i % 2 == 0 ? 'Delivered' : 'On the way',
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Orders')),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: orders.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (_, i) {
          final o = orders[i];
          return ListTile(
            title: Text(o['id']!),
            subtitle: Text(o['status']!),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () =>
                Navigator.pushNamed(context, '/orderDetails', arguments: o),
          );
        },
      ),
    );
  }
}
