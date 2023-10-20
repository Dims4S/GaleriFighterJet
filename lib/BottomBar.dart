import 'package:film/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:film/AccountPage.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 175, 203, 217), // Warna latar belakang bottom bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
