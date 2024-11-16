import 'package:flutter/material.dart';

import '../utils/asset_path.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key, required this.onTap, required this.selected, required this.image,
  });
  final VoidCallback onTap;
  final bool selected;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color:selected?Colors.black:Colors.grey.shade300,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            image,
            height: 40,
            width: 40,
            fit: BoxFit.cover,color: selected?Colors.white:Colors.black,
          ),
        ),
      ),
    );
  }
}
