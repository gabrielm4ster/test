import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('app do mangoloco'),
          backgroundColor: Colors.redAccent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_a_photo_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.image),
            ),
          ],
        ),
        drawer: Drawer(
          child: Center(child: Text('saiba mais do mango loco')),
        ),
        body: Center(
          child: Container(color: Colors.amber),
        ));
        
  }
}
