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

Container cardTres(double largura, double altura, Color? color, String imagem,
    String texto, String subtexto, String tempo) {
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      color: color,
    ),
    child: Card(
        child: Column(
          children: [
            Image.asset(imagem, width: 50, height: 50),
            Text(texto, style: textNunitoBold(15),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(subtexto, style: textNunitoVerde(13),),
            ),
            Text(tempo, style: textNunito300(12),)
          ],
        ),
    ),
  );
}
