import 'package:adaptive_app/pages/widgets/custom_container_of_desktop.dart';
import 'package:adaptive_app/pages/widgets/custom_drawer.dart';
import 'package:adaptive_app/pages/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()) ,
        Expanded(
            flex:3,child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabletLayout(),
            )),
        Expanded(child: Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: CustomContainerOfDesktop(),
        ))

      ],
    );
  }
}
