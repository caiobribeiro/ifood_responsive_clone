import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/all_stores/device_views/all_store_widget_desktop.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/all_stores/device_views/all_store_widget_mobile.dart';

import '../../../../responsive/responsive_layout.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({super.key, required this.tabController});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ResponsiveLayout(
        mobileBody: AllStoresWidgetMobile(
          tabController: widget.tabController,
        ),
        tabletBody: AllStoresWidgetMobile(
          tabController: widget.tabController,
        ),
        desktopBody:
            AllStoresWidgetDesktop(tabController: widget.tabController),
      );
    });
  }
}
