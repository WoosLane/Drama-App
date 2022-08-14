import 'package:drama_ui/models/product.dart';
import 'package:drama_ui/screens/contents/components/product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 16.0),

          ProductDetail(product: product)
        ],
      )
    );
  }
}
