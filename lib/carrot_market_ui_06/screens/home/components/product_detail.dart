import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../models/product.dart';
import '../../../theme.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyLarge),
          const SizedBox(height: 4.0),
          Text('${product.address} · ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text('${numberFormat(product.price)}원',
              style: textTheme().displayMedium),
          const Spacer(),
          // 좋아요, 채팅 갯수
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                // 비교연산자 --> bool
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 포맷 함수 만들어 보기
  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    // 형변환 처리
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData mIcon) {
    return Row(
      children: [
        Icon(
          mIcon,
          size: 14.0,
          color: Colors.grey,
        ),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
