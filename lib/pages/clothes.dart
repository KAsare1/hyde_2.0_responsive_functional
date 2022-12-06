import 'package:flutter/material.dart';

class Clothes extends StatefulWidget {
  const Clothes({Key? key, required String title}) : super(key: key);

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
