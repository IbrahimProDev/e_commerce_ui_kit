import 'package:flutter/material.dart';
import '../../widgets/app_button.dart';

class OnboardingScreen extends StatelessWidget {
  final List<Map<String, String>> pages = [
    {'title': 'Discover Best Products', 'subtitle': 'Top collections & deals'},
    {'title': 'Fast Delivery', 'subtitle': 'Secure & fast delivery'},
    {'title': 'Multiple Vendors', 'subtitle': 'Shop from various stores'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (_, i) {
          final p = pages[i];
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF7C4DFF), Color(0xFF00C2FF)],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(28),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.local_offer, size: 100, color: Colors.white),
                    SizedBox(height: 24),
                    Text(
                      p['title']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12),
                    Text(
                      p['subtitle']!,
                      style: TextStyle(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    if (i == pages.length - 1)
                      AppButton(
                        text: 'Get Started',
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, '/login'),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
