import 'package:flutter/material.dart';

class OrderTrackingPage extends StatelessWidget {
  final steps = ["Order Placed", "Processing", "On The Way", "Delivered"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Tracking")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: steps.map((s) {
            return ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text(s, style: TextStyle(fontWeight: FontWeight.w600)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
