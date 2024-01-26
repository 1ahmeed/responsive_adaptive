import 'package:flutter/material.dart';

import 'custom_item_container.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         mainAxisSpacing:16 ,
         crossAxisSpacing:16 ,
      ),
        itemBuilder: (context, index) => const CustomItemContainer(),
    itemCount: 4,
    );
  }
}

