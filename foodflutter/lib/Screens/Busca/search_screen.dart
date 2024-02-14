import 'package:flutter/material.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.all(8),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Buscar em todo o aiFood',
              border: OutlineInputBorder()
            ),
          ),
        ),
        ),
    );
  }
}