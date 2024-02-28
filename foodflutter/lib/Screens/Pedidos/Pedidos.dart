import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedidos'),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Histórico'),
              ),
              Text('Qui, 11 de janeiro 2024'),
              cardPedido(400, 200, 'assets/acai.png', 'Açaí do Nicão',
                  'Açaí de Kit Kat com Nutella e Leite Ninho', '0262'),
            ],
          )
        ],
      ),
    );
  }
}
