import 'package:flutter/material.dart';
import 'package:shop_app/screens/shop_screen.dart';
import 'package:shop_app/screens/ubdate_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        ShopScreen.id: (context) => const ShopScreen(),
        UbdateScreen.id: (context) => UbdateScreen(),
      },
      initialRoute: ShopScreen.id,
    );
  }
}
