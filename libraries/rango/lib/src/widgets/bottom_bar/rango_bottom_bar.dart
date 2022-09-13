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
          (item) => BottomNavigationBarItem(
              icon: RangoIconBar(
                icon: item.icon,
                countBadge: item.countBadge,
              ),
              activeIcon: RangoIconBar(
                icon: item.activeIcon,
                countBadge: item.countBadge,
              ),
              label: item.label),
        ),
      ),
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
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

class RangoIconBar extends StatelessWidget {
  final IconData icon;
  final int countBadge;
  const RangoIconBar({
    super.key,
    required this.icon,
    required this.countBadge,
  });

  @override
  Widget build(BuildContext context) {
    if (countBadge > 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon),
          Positioned(
            right: -5,
            top: -5,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 8,
              child: Text(
                '$countBadge',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ],
      );
    }
    return Icon(icon);
  }
}
