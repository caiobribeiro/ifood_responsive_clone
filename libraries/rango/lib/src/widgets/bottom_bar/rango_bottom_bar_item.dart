import 'package:flutter/cupertino.dart';

class RangoBottomBarItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final int countBadge;

  RangoBottomBarItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    this.countBadge = 0,
  });
}
