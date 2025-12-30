import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Card'),
              subtitle: Text('**** **** **** 4242'),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Wallet'),
              subtitle: Text('Balance: \$50'),
            ),
            Spacer(),
            AppButton(text: 'Pay Now', onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
