import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/modules/order/order_store.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String title;
  const OrderPage({Key? key, this.title = 'Pedidos'}) : super(key: key);
  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  final OrderStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container());
  }
}
