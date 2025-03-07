import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double borderRadius;
  final String imageUrl;
  final double width;
  final double height;

  const ImageContainer({
    required this.borderRadius,
    required this.height,
    required this.width,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
