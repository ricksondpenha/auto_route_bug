import 'package:flutter/material.dart';

class ActiveOrders extends StatelessWidget {
  const ActiveOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurple[100],
        child: Center(child: Text('Active Orders Page')));
  }
}

class PendingOrders extends StatelessWidget {
  const PendingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal[100],
        child: Center(child: Text('Pending Orders Page')));
  }
}
