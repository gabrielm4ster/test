import 'package:flutter/material.dart';
import 'package:test/home_page.dart';
import 'package:test/homepage_image/images_page.dart' as navegacao;
import 'animacoes/animacao.dart' as navegacao;
import 'animacoes/entrega_monster.dart' as navegacao;
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app teste',
      home: navegacao.AnimationsPage(),
    );
  }
}