import 'package:flutter/material.dart';
import 'package:myshop/ui/checkout/checkout.dart';
import 'package:myshop/ui/checkout/checkout_detail.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: SingleChildScrollView(
    
       child: Column(
          children: <Widget>[
            CheckOut(),
            CheckOutDetail()
          
          ],
       ),
     )
    );
  }
}