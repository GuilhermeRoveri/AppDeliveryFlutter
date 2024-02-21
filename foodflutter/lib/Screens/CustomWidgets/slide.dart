import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: PageView(children: [
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
      ]),
    );
  }
}
