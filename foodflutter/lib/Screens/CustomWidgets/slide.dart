import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0];
  int qtdPaginas = 3;
  int paginaAtual = 0;

  //Método que é chamado antes da página ser constrúida

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      int page = pageController.page!.round();
      setState(() {
        paginaAtual = page;
      });

      pageController.nextPage(
          duration: Duration(seconds: 2), curve: Curves.linear);
      if (page >= 3) {
        pageController.animateToPage(0,
            duration: Duration(seconds: 2), curve: Curves.easeInCirc);
      } else {
        pageController.nextPage(
            duration: const Duration(seconds: 2), curve: Curves.linear);
      }
    });
  }

  //iniciar o progresso
  void iniciarProgresso() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
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
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
          ]),
        ],
      ),
    );
  }
}
