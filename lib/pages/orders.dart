import 'package:flutter/material.dart';

class ActiveOrders extends StatelessWidget {
  const ActiveOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Active Orders Page'));
  }
}

class PendingOrders extends StatelessWidget {
  const PendingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Pending Orders Page'));
  }
}
