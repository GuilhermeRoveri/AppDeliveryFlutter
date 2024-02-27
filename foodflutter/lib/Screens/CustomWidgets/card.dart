import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';

Widget card(
    double largura, double altura, Color color, String texto, String img) {
  return Container(
    margin: const EdgeInsets.fromLTRB(8, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoBold(14)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 60, height: 60),
          ),
        ],
      ),
    ),
  );
}

Container cardDois(
    double largura, double altura, Color? color, String texto, String img) {
  return Container(
    margin: const EdgeInsets.fromLTRB(8, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoWhiteBold(14)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 45, height: 45),
          ),
        ],
      ),
    ),
  );
}

Container cardTres(double largura, double altura, String imagem, String texto,
    String subtexto, String tempo, Color? color) {
  return Container(
    width: largura,
    height: altura,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        child: Column(
          children: [
            Image.asset(
              imagem,
              width: double.infinity,
              height: 80,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                texto,
                style: textNunitoBold(15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtexto,
                style: textNunitoVerde(13),
              ),
            ),
            Text(
              tempo,
              style: textNunito300(12),
            )
          ],
        ),
      ),
    ),
  );
}

Container cardPedido(double largura, double altura, String imagem, String texto,
    String subtexto, String tempo, Color? color) {
  return Container(
    width: largura,
    height: altura,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        child: Column(
          children: [
            Image.asset(
              imagem,
              width: double.infinity,
              height: 80,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                texto,
                style: textNunitoBold(15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtexto,
                style: textNunitoVerde(13),
              ),
            ),
            Text(
              tempo,
              style: textNunito300(12),
            )
          ],
        ),
      ),
    ),
  );
}

