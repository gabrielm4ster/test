import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test/animacoes/animacao.dart';
import 'package:test/animacoes/entrega_monster.dart';
import 'package:test/homepage_image/images_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app do mangoloco',
            style: TextStyle(
              fontFamily: 'Green_Energy',
              color: Colors.amber,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            )),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageTransition(
                  child: const ImagesPage(),
                  type: PageTransitionType.size,
                  alignment: Alignment.center,
                ),
              );
            },
            icon: Icon(
              Icons.auto_fix_normal_outlined,
              color: Colors.amber,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageTransition(
                  child: const AnimationsPage(),
                  type: PageTransitionType.rotate,
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 500),
                ),
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.amber,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageTransition(
                  child: const DeliveryPage(),
                  type: PageTransitionType.size,
                  alignment: Alignment.center,
                ),
              );
            },
            icon: Icon(
              Icons.shop_2,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Center(
          child: Text(
            '''O Monster Mango Loco e uma explosao de sabores tropicais em uma lata. Feito com uma mistura exotica de sucos de frutas como manga, goiaba, abacaxi e laranja, este energetico oferece uma experiencia unica. Selecionando cuidadosamente as frutas mais maduras, garante se um sabor autentico. Combinando esses sucos com taurina, cafeina e vitaminas B, proporciona-se um impulso instantaneo de energia. Seu sabor e uma mistura equilibrada de docura tropical e acidez cítrica. Cada gole é uma viagem sensorial aos trópicos, revigorante e estimulante. Disponível em latas de 473 ml, é uma escolha popular para aqueles que precisam de energia durante o dia. O Monster Mango Loco conquistou muitos fãs com sua embalagem vibrante e sabor irresistível, oferecendo uma experiência energética única.''',
            style: TextStyle(
                fontFamily: 'Green_Energy',
                color: Colors.amber,
                fontWeight: FontWeight.w100),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/images.webp',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
