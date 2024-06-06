import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'drawer_page.dart';

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
      drawer: DrawerPage(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 350,
              child: Image.asset(
                'assets/images/file2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              height: 290,
              child: Image.asset(
                'assets/images/file.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
