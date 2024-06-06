import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
            onPressed: () {},
            icon: Icon(
              Icons.add_a_photo_outlined,
              color: Colors.amber,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(
                  builder: (context) => ImagesPage(),
                ),
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Center(
          child: Text(
            '''O Monster Mango Loco é uma explosão de sabores tropicais em uma lata. Feito com uma mistura exótica de sucos de frutas como manga, goiaba, abacaxi e laranja, este energético oferece uma experiência única. Selecionando cuidadosamente as frutas mais maduras, garante-se um sabor autêntico. Combinando esses sucos com taurina, cafeína e vitaminas B, proporciona-se um impulso instantâneo de energia. Seu sabor é uma mistura equilibrada de doçura tropical e acidez cítrica. Cada gole é uma viagem sensorial aos trópicos, revigorante e estimulante. Disponível em latas de 473 ml, é uma escolha popular para aqueles que precisam de energia durante o dia. O Monster Mango Loco conquistou muitos fãs com sua embalagem vibrante e sabor irresistível, oferecendo uma experiência energética única.''',
            style: TextStyle(
                fontFamily: 'Green_Energy',
                color: Colors.amber,
                fontWeight: FontWeight.w100),
          ),
        ),
        backgroundColor: Colors.blueAccent,
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
