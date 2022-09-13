import 'package:flutter/material.dart';

class AllStoresWidget extends StatefulWidget {
  const AllStoresWidget({super.key});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: const Center(child: Text("Início")),
    );
  }
}
