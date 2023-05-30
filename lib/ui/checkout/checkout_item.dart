import 'package:flutter/material.dart';
import 'package:myshop/ui/model/checkout_product.dart';

class CheckOutItem extends StatelessWidget {
  final CheckOutProduct flower;
  const CheckOutItem({super.key, required this.flower});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.white),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 4),
              color: Colors.grey,
            ),
          ]),
      child: Row(
        children: [
          Image.asset(
            flower.images,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        flower.name,
                        style: const TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 65, 54, 54)),
                      ),
                      const Spacer(),
                      const Text(
                        "x",
                      ),
                      Text(
                        (flower.quantity).toStringAsFixed(0),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),

                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        (flower.price).toStringAsFixed(2),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.pinkAccent,
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
