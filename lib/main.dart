import 'package:flutter/material.dart';
import 'package:myshop/ui/checkout/checkout_body.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlowerShop',
      debugShowCheckedModeBanner: false, //
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.pink.shade50,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlowerShop'),
          backgroundColor: Colors.pink[100],
        ),
        body: const SafeArea(
          child: CheckOutBody(),
        ),
      ),
    );
  }
}
