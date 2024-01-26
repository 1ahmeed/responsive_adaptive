import 'package:adaptive_app/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
   const CustomDrawer({Key? key}) : super(key: key);

  static const List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(title: "D A S H B O A R D", icon: Icons.home),
    DrawerItemModel(title: "S E T T I N G ", icon: Icons.settings),
    DrawerItemModel(title: "A B O U T", icon: Icons.info),
    DrawerItemModel(title: "L O G O U T", icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      elevation: 0,
      backgroundColor:Colors.grey,
      // Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 56,),
          ),
          SizedBox(height: 16,),
          CustomDrawerItemListView(drawerItemModel: drawerItemModel)

        ],
      ),
    );
  }
}

