import 'package:adaptive_app/pages/widgets/custom_item_container.dart';
import 'package:adaptive_app/pages/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class CustomContainerOfDesktop extends StatelessWidget {
  const CustomContainerOfDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex:2,child: CustomItemContainer()),
        SizedBox(height: 16,),
        Expanded(child: CustomItemList())

      ],
    );
  }
}
