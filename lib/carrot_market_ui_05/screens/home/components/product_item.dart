import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          // 이미지
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115.0,
              height: 115.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          // 상품 설명 widget
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
