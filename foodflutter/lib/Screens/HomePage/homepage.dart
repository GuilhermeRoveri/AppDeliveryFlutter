import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/Busca/search_screen.dart';
import 'package:foodflutter/Screens/CustomWidgets/menuInferior.dart';
import 'package:foodflutter/Screens/Profile/profile_screen.dart';
import 'package:foodflutter/Screens/TelaInicio/telainicio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;
  //O número é definido por cada botão da lista, começando em 0 (Home)

  //Próximo item
  void nextStation(int posicao) {
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas

  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    Text('Pedidos'),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: telas.elementAt(itemSelecionado),
      ),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}
