import 'package:flutter/material.dart';

import 'dart:math';

import 'colors_lib.dart';

void main() {
  random = Random(DateTime.now().millisecond);

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Card> cards = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, int index) {
                  return cards[index];
                })
           
            ),
        floatingActionButton: FloatingActionButton(
          
          onPressed: () {
            setState(() {
              cards.add(cardBulider());
            });
          },
        ),
      ),
    );
  }
}

Card cardBulider() {
  var randomColor = getRandomColor();
  Key uKey = UniqueKey();
  return Card(
    key: uKey,
    color: randomColor,
    child: Column(children: [
      Text('$uKey'),
      Text('This card color is $randomColor'),
    ]),
  );
}
