import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/screens/shop_screen.dart';
import 'package:shop_app/screens/ubdate_screen.dart';
import 'package:shop_app/servise/apis/get_classes/get_categry.dart';
import 'package:shop_app/servise/apis/posts/add_prouct.dart';
import 'package:shop_app/servise/apis/put/update_data.dart';

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
        UbdateScreen.id: (context) => const UbdateScreen(),
      },
      initialRoute: ShopScreen.id,
    );
  }
}
