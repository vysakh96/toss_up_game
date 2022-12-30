import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TossUp(),
    ),
  );
}

class TossUp extends StatefulWidget {
  const TossUp({Key? key}) : super(key: key);

  @override
  State<TossUp> createState() => _TossUpState();
}

class _TossUpState extends State<TossUp> {
  int number1 = 1;
  int number2 = 1;
  void display() {
    number1 = Random().nextInt(6) + 1;
    number2 = Random().nextInt(6) + 1;
    setState(() {
      number1;
      number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toss Up Game',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.red[900],
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  display();
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/dice $number1.png')),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  display();
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/dice $number2.png')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
