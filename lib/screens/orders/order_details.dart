import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map? args = ModalRoute.of(context)?.settings.arguments as Map?;
    final id = args?['id'] ?? '#1001';
    final status = args?['status'] ?? 'Delivered';
    return Scaffold(
      appBar: AppBar(title: Text('Order $id')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(title: Text('Order ID'), subtitle: Text(id)),
            ListTile(title: Text('Status'), subtitle: Text(status)),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(title: Text('Item A'), trailing: Text('\$29.99')),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
