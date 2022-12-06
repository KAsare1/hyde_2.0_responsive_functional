import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key, required String title}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [],
      ),
    );
  }
}
