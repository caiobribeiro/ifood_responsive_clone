import 'package:flutter/material.dart';

class DrugStoreWidget extends StatefulWidget {
  const DrugStoreWidget({super.key});

  @override
  State<DrugStoreWidget> createState() => _DrugStoreWidgetState();
}

class _DrugStoreWidgetState extends State<DrugStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(child: Text("Drogaria")),
    );
  }
}
