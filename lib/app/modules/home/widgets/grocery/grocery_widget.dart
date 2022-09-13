import 'package:flutter/material.dart';

class GroceryWidget extends StatefulWidget {
  const GroceryWidget({super.key});

  @override
  State<GroceryWidget> createState() => _GroceryWidgetState();
}

class _GroceryWidgetState extends State<GroceryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(child: Text("Mercados")),
    );
  }
}
