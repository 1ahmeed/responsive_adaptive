import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white),
    );
  }
}
