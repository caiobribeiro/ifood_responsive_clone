import 'package:flutter/material.dart';

import '../bottom_bar/rango_bottom_bar_item.dart';

class CustomDrawerWidget extends StatefulWidget {
  final List<RangoBottomBarItem> items;
  final void Function(int index) onIndexSelected;

  const CustomDrawerWidget({
    Key? key,
    required this.items,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    var myCustomDrawer = Drawer(
      elevation: 0,
      child: Column(
        children: List.from(
          widget.items.map(
            ((item) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                  child: ListTile(
                    leading: Icon(item.activeIcon),
                    title: Text(
                      item.label,
                    ),
                    onTap: () {},
                  ),
                )),
          ),
        ),
      ),
    );
    return myCustomDrawer;
  }
}
