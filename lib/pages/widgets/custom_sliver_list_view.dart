import 'package:adaptive_app/pages/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(


      itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: CustomItemList(),
        ),
    );
  }
}
