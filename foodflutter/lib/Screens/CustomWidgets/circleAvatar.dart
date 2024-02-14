import 'package:flutter/material.dart';
//Componentização

//Retorna uma imagem circular
Widget circleAvatar(String img) {
  return SizedBox(
    width: 50,
    height: 50,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
      backgroundImage: NetworkImage(img),
      ),
    ),
  );
}
