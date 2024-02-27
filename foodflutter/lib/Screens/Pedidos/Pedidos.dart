import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pedidos'),
        ),
        body: SizedBox(
          height: 250,
          child: ListView(scrollDirection: Axis.horizontal, 
          children: [
            Padding(padding: const EdgeInsets.all(8.0), 
            child: Wrap(
              children: [
                
              ],
              ))
          ]),
        ));
  }
}
