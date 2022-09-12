import 'package:flutter/material.dart';
import 'rango_bottom_bar_item.dart';

class RangoBottomBar extends StatefulWidget {
  final List<RangoBottomBarItem> items;
  final void Function(int index) onIndexSelected;
  const RangoBottomBar({
    super.key,
    required this.items,
    required this.onIndexSelected,
  });

  @override
  State<RangoBottomBar> createState() => _RangoBottomBarState();
}

class _RangoBottomBarState extends State<RangoBottomBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.from(
        widget.items.map(
          (item) =>
              BottomNavigationBarItem(icon: Icon(item.icon), label: item.label),
        ),
      ),
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
      currentIndex: selected,
      onTap: ((index) {
        widget.onIndexSelected(index);
        setState(() {
          selected = index;
        });
      }),
    );
  }
}
