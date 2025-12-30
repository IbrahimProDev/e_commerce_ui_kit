import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Deliver to'),
              subtitle: Text('House #12, Dhaka'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment method'),
              subtitle: Text('Visa **** 4242'),
            ),
            Spacer(),
            AppButton(
              text: 'Place Order',
              onTap: () => Navigator.pushNamed(context, '/orderTracking'),
            ),
          ],
        ),
      ),
    );
  }
}
