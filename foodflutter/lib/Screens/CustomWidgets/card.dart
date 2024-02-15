import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';

Widget card(double largura, double altura, Color color, String texto, String img) {
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
            child: Text(texto, style: textNunitoWhiteBold(16)),
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
