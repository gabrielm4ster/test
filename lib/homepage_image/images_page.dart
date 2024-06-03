import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text(
            'mango loco app',
            style: TextStyle(
                fontFamily: 'Green_Energy',
                color: Colors.amber,
                fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.blueAccent,
          child: Center(
              child: Text(
            'volte para a home de mangotango',
            style: TextStyle(
                fontFamily: 'Green_Energy',
                color: Colors.amber,
                fontWeight: FontWeight.w900),
          )),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 350,
                child: Image.asset(
                  'assets/file2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/file.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ));
  }
}
