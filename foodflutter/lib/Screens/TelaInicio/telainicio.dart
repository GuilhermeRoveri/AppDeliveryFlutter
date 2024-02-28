import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';
import 'package:foodflutter/Screens/CustomWidgets/card.dart';
import 'package:foodflutter/Screens/CustomWidgets/slide.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Avenida dos Autonomistas',
          style: textNunitoBold(18),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  card(190, 90, const Color.fromARGB(255, 209, 203, 203),
                      "Restaurantes", 'assets/sopas.png'),
                  card(190, 90, const Color.fromARGB(255, 209, 203, 203),
                      "Mercado", 'assets/mercado.png'),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardDois(90, 110, Colors.deepPurple, "Farmácia",
                      "assets/farmacia.png"),
                  cardDois(90, 110, Colors.deepPurple, "Bebidas",
                      "assets/bebidas.png"),
                  cardDois(
                      90, 110, Colors.deepPurple, "Sucos", "assets/sucos.png"),
                  cardDois(
                      90, 110, Colors.deepPurple, "Pizza", "assets/pizza.png")
                ],
              ),
            ),
          ),
          const Slide(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Tudo a partir de R\$ 5,00'),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      cardTres(
                          180,
                          220,
                          'assets/feijoadacard.jpg',
                          'Feijoada',
                          'RS 30,00',
                          '23-33 minutos',
                          Color.fromARGB(255, 245, 240, 240)),
                      cardTres(
                          180,
                          220,
                          'assets/lanchegorgonzola.jpg',
                          'Lanche de Queijo',
                          'RS 50,00',
                          '43-60 minutos',
                          const Color.fromARGB(255, 245, 240, 240)),
                      cardTres(
                          180,
                          220,
                          'assets/risoles.jpg',
                          'Risoles',
                          'RS 12,00',
                          '15-25 minutos',
                          const Color.fromARGB(255, 245, 240, 240)),
                    ],
                  ),
                )
              ],
            ),
            
          ),
          
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Ofertas especiais'),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Column(
                children: [
                  SizedBox(
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Image.asset('tortaLimao.jpg', width: 300, height: 200),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 65,
                            child: Card(
                              color: Colors.grey,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text('4.9',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('Torta de Limão',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('R\$40 min • R\$20,00',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Image.asset('tortaChocolate.jpg', width: 300, height: 200),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 65,
                            child: Card(
                              color: Colors.grey,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text('4.9',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('Torta de Limão',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('R\$40 min • R\$20,00',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Image.asset('tortaFrango.jpg', width: 300, height: 200),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 65,
                            child: Card(
                              color: Colors.grey,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text('4.9',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('Torta de Limão',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('R\$40 min • R\$20,00',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
              
            ]
            ),
            
          ),
           Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Pedidos Populares'),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      cardTres(
                          180,
                          220,
                          'assets/pastel.jpeg',
                          'Pastel Cremoso',
                          'RS 20,00',
                          '30-45 minutos',
                          Color.fromARGB(255, 245, 240, 240)),
                      cardTres(
                          180,
                          220,
                          'assets/hotdog.jpg',
                          'Cachorro Quente de Oz',
                          'RS 12,00',
                          '15-25 minutos',
                          const Color.fromARGB(255, 245, 240, 240)),
                      cardTres(
                          180,
                          220,
                          'assets/acaicompleto.jpg',
                          'Açaí com Chocolate e Ninho',
                          'RS 25,00',
                          '25-40 minutos',
                          const Color.fromARGB(255, 245, 240, 240)),
                    ],
                  ),
                )
              ],
            ),
            
          ),
          
        ],
        
      ),
      
    );
  }
}
