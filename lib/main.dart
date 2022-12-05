import 'package:airtual_showroom_proj/auth/customer_login.dart';
import 'package:airtual_showroom_proj/auth/customer_signup.dart';
import 'package:airtual_showroom_proj/main_screens/chat_main.dart';
import 'package:airtual_showroom_proj/providers/cart_provider.dart';
import 'package:airtual_showroom_proj/providers/wish_provider.dart';
import 'package:flutter/material.dart';

import 'auth/supplier_login.dart';
import 'auth/supplier_signup.dart';
import 'main_screens/customer_home.dart';
import 'main_screens/supplier_home.dart';
import 'main_screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=> Cart()),
      ChangeNotifierProvider(create: (_)=> Wish())
    ],
    child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const WelcomeScreen(),
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) =>const WelcomeScreen(),
        '/customer_home': (context) =>const CustomerHomeScreen(),
        '/supplier_home': (context) =>const SupplierHomeScreen(),
        '/customer_signup': (context) =>const CustomerRegister(),
        '/customer_login': (context) =>const CustomerLogin(),
        '/supplier_signup': (context) =>const SupplierRegister(),
        '/supplier_login': (context) =>const SupplierLogin(),
        '/chat_screen': (context) => const ChatHome(),
      },
    );
  }
}

