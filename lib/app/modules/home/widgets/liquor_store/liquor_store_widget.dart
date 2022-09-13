import 'package:flutter/material.dart';

class LiquorStoreWidget extends StatefulWidget {
  const LiquorStoreWidget({super.key});

  @override
  State<LiquorStoreWidget> createState() => LiquorStoreWidgetState();
}

class LiquorStoreWidgetState extends State<LiquorStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(child: Text("Bebidas")),
    );
  }
}
