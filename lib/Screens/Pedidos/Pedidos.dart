import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pedidos',
          style: TextStyle(
              color: Colors.red,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Ajusta o alinhamento para a esquerda
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Histórico'),
                ),
                Text('Qui, 11 de janeiro 2024'),
                cardPedido(400, 200, 'assets/acai.png', 'Açaí do Nicão',
                    'Açaí de Kit Kat com Nutella e Leite Ninho', '0262'),
                SizedBox(
                    height:
                        20), // Adiciona um espaço entre os conjuntos de pedidos
                Text('Qui, 08 de janeiro 2024'),
                cardPedido(400, 200, 'assets/lanches.png', 'Hambúrguer do João',
                    'Hambúrguer de Gorgonzola', '0263'), // Novo pedido de açaí
                SizedBox(
                    height:
                        20), // Adiciona um espaço entre os conjuntos de pedidos
                Text('Qui, 02 de janeiro 2024'),
                cardPedido(400, 216, 'assets/sushi.png', 'Sushi do Guizão',
                    'Hot Roll 10 un.', '0264'), // Novo pedido de açaí
              ],
            ),
          ),
        ),
      ),
    );
  }
}
