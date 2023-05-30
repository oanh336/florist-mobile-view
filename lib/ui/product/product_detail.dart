import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen(
    this.product, {
    super.key,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text(
                product.title,
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 0),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 92, 92, 92),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text(
                product.description,
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            // Container(
            //   decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(50),
            //     topRight: Radius.circular(50),
            //   )),
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 160,
            //       right: 0,
            //       bottom: 10,
            //       top: 40,
            //     ),
            //     child: TextButton(
            //       style: TextButton.styleFrom(
            //         padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
            //         shape:
            //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         backgroundColor: Colors.green,
            //       ),
            //       onPressed: press as void Function()?,
            //       onPressed: () {
            //         final cart = context.read<CartManager>();
            //         cart.addItem(product);
            //         ScaffoldMessenger.of(context)
            //           ..hideCurrentSnackBar()
            //           ..showSnackBar(
            //             SnackBar(
            //               content: const Text(
            //                 'Sản phẩm được thêm vào giỏ hàng',
            //               ),
            //               duration: const Duration(seconds: 2),
            //               action: SnackBarAction(
            //                 label: 'Trở lại',
            //                 onPressed: () {
            //                   cart.removeSingleItem(product.id!);
            //                 },
            //               ),
            //             ),
            //           );
            //       },
            //       child: const Text(
            //         "Thêm giỏ hàng",
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
