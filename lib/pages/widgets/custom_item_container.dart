import 'package:flutter/material.dart';

class CustomItemContainer extends StatelessWidget {
  const CustomItemContainer({
    super.key, this.color,
  });
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? Colors.black38,
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
