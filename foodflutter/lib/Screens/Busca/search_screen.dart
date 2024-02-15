// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Buscar em todo o aiFood',
                  border: OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(4),
                  prefixIcon: const Icon(Icons.search, color: Colors.red),
                  filled: true,
                  fillColor: Colors.grey)),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categorias', style: textNunitoBold(16)),
            ),
            Wrap(
              children: [
                card(185, 80, Colors.red, 'Mercado', 'assets/mercado.png'),
                card(185, 80, Colors.orange, 'Farmácia', 'assets/farmacia.png'),
                card(185, 80, Colors.yellow, 'Bebidas', 'assets/bebidas.png'),
                card(185, 80, Colors.green, 'Pet', 'assets/pet.png'),
                card(185, 80, Colors.green, 'Sorvete', 'assets/sorvete.png'),
                card(185, 80, Colors.orange, 'Bolos', 'assets/bolo.png'),
                card(185, 80, Colors.purple, 'Açaí', 'assets/acai.png'),
                card(185, 80, Colors.pink, 'Café', 'assets/cafe.png'),
                card(185, 80, Colors.lightGreen, 'Pizzas', 'assets/pizza.png'),
                card(185, 80, Colors.indigo, 'Lanches', 'assets/lanches.png'),
                card(185, 80, Colors.deepOrange, 'Espetinhos', 'assets/carnes.png'),
                card(185, 80, Colors.cyan, 'Hot-Dog', 'assets/hotDog.png'),
                card(185, 80, Colors.blueGrey, 'Marmitas', 'assets/marmita.png'),
                card(185, 80, Colors.black, 'Sucos', 'assets/sucos.png'),
              ],
            )
          ],
        ));
  }
}
