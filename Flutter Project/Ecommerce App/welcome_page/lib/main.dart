import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:welcome_page/Authentication/sign_in.dart';
import 'package:welcome_page/Opening/splash_screen.dart';
import 'package:welcome_page/Payment%20with%20API/dio.dart';
import 'package:welcome_page/auth/home.dart';
import 'package:welcome_page/auth/welcome_screen.dart';
import 'package:welcome_page/card_provider.dart';
import 'package:provider/provider.dart';
//import 'welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelperPayment.init();

  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
      apiKey: "AIzaSyDHXvzFPYobz7P_JpNL0dpDnDXiXmHLt_0",
      appId: "1:545434687654:android:0461543da8972054867c67",
      messagingSenderId: "545434687654",
      projectId: "login-b91d2",
    ),
  );
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const HomeScreen(),
  ));
}
