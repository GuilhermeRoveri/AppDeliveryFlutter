import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0, 0.0];
  int qtdPaginas = 4;
  int paginaAtual = 0;

  //Método que é chamado antes da página ser constrúida

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      //variavel para comparar com a quantidade de paginas
      int proximaPagina = paginaAtual + 1;

      if (proximaPagina >= qtdPaginas) {
        //qnd a variavel for = a quantidade de paginas, reseta as paginas
        proximaPagina = 0;
      }

      pageController
          .animateToPage(proximaPagina,
              duration: const Duration(milliseconds: 300), curve: Curves.linear)
          .then((_) {
        setState(() {
          paginaAtual = proximaPagina;
          reset();
        });
      });
    });
  }

  //iniciar o progresso
  void iniciarProgresso() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] < 1) {
          progresso[paginaAtual] += 0.02;
        } else {
          timer.cancel();
        }
      });
    });
  }

  //método para resetar a animação

  void reset() {
    for (int i = 0; i < qtdPaginas; i++) {
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  //método para criar o indicator

  List<Widget> buildIndicator() {
    List<Widget> lista = [];
    for (int i = 0; i < qtdPaginas; i++) {
      lista.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i? Colors.blue: Colors.grey),
        ),
      ));
    }
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(controller: pageController, children: [
            SizedBox(
               width: double.infinity,
            height: 200,
            child: Image.asset(
            'assets/pizza.gif',
              fit: BoxFit.cover, 
            )
            ),
            SizedBox(
               width: double.infinity,
            height: 200,
            child: Image.asset(
            'assets/sanduiche.gif',
              fit: BoxFit.cover, 
            )
            ),
            SizedBox(
                 width: double.infinity,
            height: 200,
            child: Image.asset(
            'assets/carne.gif',
              fit: BoxFit.cover, 
            )
            ),
             SizedBox(
                 width: double.infinity,
            height: 200,
            child: Image.asset(
            'assets/massa.gif',
              fit: BoxFit.cover, 
            )
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
