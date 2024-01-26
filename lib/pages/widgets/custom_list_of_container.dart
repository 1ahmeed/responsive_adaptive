import 'package:adaptive_app/pages/widgets/custom_item_container.dart';
import 'package:flutter/material.dart';
class CustomListOfContainer extends StatelessWidget {
  const CustomListOfContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: AspectRatio(aspectRatio: 1,child: CustomItemContainer()),
            ),),
      ),
    );
  }
}
