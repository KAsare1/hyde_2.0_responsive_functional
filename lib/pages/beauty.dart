import 'package:flutter/material.dart';

class Beauty extends StatefulWidget {
  const Beauty({Key? key, required String title}) : super(key: key);

  @override
  State<Beauty> createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
