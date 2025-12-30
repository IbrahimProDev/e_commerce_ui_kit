import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final items = List.generate(
    5,
    (i) => {'title': 'Offer ${i + 1}', 'time': '2h ago'},
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: items.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (_, i) {
          final it = items[i];
          return ListTile(
            title: Text(it['title']!),
            subtitle: Text(it['time']!),
          );
        },
      ),
    );
  }
}
