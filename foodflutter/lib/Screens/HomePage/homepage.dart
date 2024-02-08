import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/menuInferior.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;
  //O número é definido por cada botão da lista, começando em 0 (Home)

  //Próximo item
  void nextStation (int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas

  List<Widget> telas = const [
      Text('Home'),
      Text('Busca'),
      Text('Pedidos'),
      Text('Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: telas.elementAt(itemSelecionado),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: itemSelecionado,
      //Verifica em qual posição está selecionada, usando ambas as listas, a do meuniInferior e a das telas acima

        onTap: nextStation,


        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: [
          menuInferior(Icons.home, 'Home'),
          menuInferior(Icons.search, 'Busca'),
          menuInferior(Icons.shopping_cart, 'Pedidos'),
          menuInferior(Icons.person, 'Perfil'),
        ],
      ),
    );
  }
}
