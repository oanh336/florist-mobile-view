import 'package:flutter/material.dart';
import 'package:myshop/ui/checkout/checkout_item.dart';

import '../model/checkout_product.dart';

class CheckOutDetail extends StatelessWidget {
  const CheckOutDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: product.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  CheckOutProduct Hoa = product[index];
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CheckOutItem(
                      flower: Hoa,
                    ),
                  );
                },
              ),
             
            ],
          ),
          
    );
  }
}
