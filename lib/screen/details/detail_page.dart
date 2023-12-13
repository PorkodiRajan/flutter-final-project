import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/Product.dart';
import 'component/_build_app_bar.dart';
import 'component/_build_cart_btn.dart';
import 'component/_image_view.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailAppBar(product),
      body: Stack(
        children: [
          showImageView(context, product),

          const SizedBox(height: kSpace),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // buildRowPriceRating(product),
                const SizedBox(height: kSpace),
                Text(
                  product.description,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  maxLines: 7,
                ),
                const SizedBox(height: kSpace),
                Text(
                  product.price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                const SizedBox(height: 40),
                Center(child: btnAddToCart(context, product)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
