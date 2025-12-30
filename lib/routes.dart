import 'package:e_commerce_ui_kit/screens/auth/login_screen.dart';
import 'package:e_commerce_ui_kit/screens/auth/signup_screen.dart';
import 'package:e_commerce_ui_kit/screens/cart/cart_screen.dart';
import 'package:e_commerce_ui_kit/screens/category/category_product.dart';
import 'package:e_commerce_ui_kit/screens/category/category_screen.dart';
import 'package:e_commerce_ui_kit/screens/checkout/checkout_screen.dart';
import 'package:e_commerce_ui_kit/screens/checkout/payment_screen.dart';
import 'package:e_commerce_ui_kit/screens/home/home_screen.dart';
import 'package:e_commerce_ui_kit/screens/notifications/notification_page.dart';
import 'package:e_commerce_ui_kit/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce_ui_kit/screens/orders/order_details.dart';
import 'package:e_commerce_ui_kit/screens/orders/order_list.dart';
import 'package:e_commerce_ui_kit/screens/product/product_details.dart';
import 'package:e_commerce_ui_kit/screens/product/product_reviews.dart';
import 'package:e_commerce_ui_kit/screens/profile/edit_profile_page.dart';
import 'package:e_commerce_ui_kit/screens/profile/profile_screen.dart';
import 'package:e_commerce_ui_kit/screens/search/search_screen.dart';
import 'package:e_commerce_ui_kit/screens/settings/settings_page.dart';
import 'package:e_commerce_ui_kit/screens/splash/splash_screen.dart';

import 'package:e_commerce_ui_kit/screens/wishlist/wishlist_screen.dart';

final routes = {
  '/splashscreen': (_) => SplashScreen(),
  '/onboarding': (_) => OnboardingScreen(),
  '/login': (_) => LoginScreen(),
  '/register': (_) => SignupScreen(),
  '/home': (_) => HomeScreen(),
  '/search': (_) => SearchPage(),
  '/category': (_) => CategoryPage(),
  '/categoryProducts': (_) => CategoryProducts(),
  '/productDetails': (_) => ProductDetails(),
  '/productReviews': (_) => ProductReviews(),
  '/cart': (_) => CartPage(),
  '/checkout': (_) => CheckoutPage(),
  '/payment': (_) => PaymentPage(),
  '/wishlist': (_) => WishlistPage(),
  '/profile': (_) => ProfilePage(),
  '/edit_Profile': (_) => EditProfilePage(),
  '/orders': (_) => OrderList(),
  '/orderDetails': (_) => OrderDetails(),
  '/notifications': (_) => NotificationsPage(),
  '/settings': (_) => SettingsPage(),
};
