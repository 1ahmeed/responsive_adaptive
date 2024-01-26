import 'package:adaptive_app/pages/widgets/custom_list_of_container.dart';
import 'package:flutter/material.dart';

import 'custom_sliver_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),
        ),
        CustomListOfContainer(),
        CustomSliverListView()
      ],
    );
  }
}
