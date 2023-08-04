import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Color color;
  final String title;
  const CategoryWidget({
    super.key,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: color),
    );
  }
}
