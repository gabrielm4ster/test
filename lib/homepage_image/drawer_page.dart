import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/home_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            iconColor: Colors.amber,
            title: const Text(
              'mango loco',
              style: TextStyle(
                  fontFamily: 'Green_Energy',
                  color: Colors.amber,
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  backgroundColor: Colors.blue),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
         Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(Icons.arrow_back),
                  iconColor: Colors.amber,
                  title: const Text(
                    'voltar',
                    style: TextStyle(
                        fontFamily: 'Green_Energy',
                        color: Colors.amber,
                        fontWeight: FontWeight.w900),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
