import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';
import 'package:foodflutter/Screens/CustomWidgets/slide.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Avenida dos Autonomistas',
          style: textNunitoBold(18),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(190, 90, Color.fromARGB(255, 209, 203, 203),
                    "Restaurantes", 'assets/sopas.png'),
                card(190, 90, Color.fromARGB(255, 209, 203, 203), "Mercado",
                    'assets/mercado.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 110, Colors.deepPurple, "Farmácia",
                    "assets/farmacia.png"),
                cardDois(90, 110, Colors.deepPurple, "Bebidas",
                    "assets/bebidas.png"),
                cardDois(
                    90, 110, Colors.deepPurple, "Sucos", "assets/sucos.png"),
                cardDois(
                    90, 110, Colors.deepPurple, "Pizza", "assets/pizza.png")
              ],
            ),
          ),
          const Slide(),
        ],
      ),
    );
  }
}
