import 'package:flutter/material.dart';

class AdvertisingWidget extends StatefulWidget {
  final String imageLink;
  const AdvertisingWidget({super.key, required this.imageLink});

  @override
  State<AdvertisingWidget> createState() => _AdvertisingWidgetState();
}

class _AdvertisingWidgetState extends State<AdvertisingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          widget.imageLink,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
