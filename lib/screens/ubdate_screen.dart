import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UbdateScreen extends StatelessWidget {
  const UbdateScreen({super.key});
  static const String id = 'ubdate_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const Text(
            'Update Product',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
