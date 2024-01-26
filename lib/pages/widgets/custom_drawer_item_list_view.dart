import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.drawerItemModel,
  });

  final List<DrawerItemModel> drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerItemModel.length,
      itemBuilder: (context, index) =>
          CustomDrawerItem(drawerItemModel:drawerItemModel[index]),);
  }
}
