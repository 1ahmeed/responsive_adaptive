import 'package:adaptive_app/pages/widgets/adaptive_layout_screen.dart';
import 'package:adaptive_app/pages/widgets/desktop_layout.dart';
import 'package:adaptive_app/pages/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: AdaptiveLayoutScreen(
            mobileLayout: (context) => const MobileLayout(),
            tabletLayout: (context) => const TabletLayout(),
            desktopLayout: (context) => const DesktopLayout()));
  }
}
