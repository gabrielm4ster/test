import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test/home_page.dart';


class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      shadowColor: Colors.amber,
      backgroundColor: Colors.black,
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
                  backgroundColor: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(
                PageTransition(
                  child: const HomePage(),
                  type: PageTransitionType.bottomToTop
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
