import 'package:e_commerce_ui_kit/screens/auth/forgot_password.dart';
import 'package:e_commerce_ui_kit/screens/auth/login_screen.dart';
import 'package:e_commerce_ui_kit/screens/auth/signup_screen.dart';
import 'package:e_commerce_ui_kit/screens/category/category_screen.dart';
import 'package:e_commerce_ui_kit/screens/profile/edit_profile_page.dart';
import 'package:e_commerce_ui_kit/screens/profile/profile_screen.dart';
import 'package:e_commerce_ui_kit/screens/splash/splash_screen.dart';

import 'package:e_commerce_ui_kit/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,

      // যেটা প্রথম দেখাবে
      initialRoute: '/splash',

      // সকল Route এখানে
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/forgot': (context) => ForgotPasswordScreen(),
        '/register': (context) => SignupScreen(),
        '/profile': (context) => ProfilePage(),
        '/category': (context) => CategoryPage(),
        '/edit_Profile': (context) => EditProfilePage(),
      },

      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
    );
  }
}
