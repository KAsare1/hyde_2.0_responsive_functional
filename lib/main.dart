import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/first page/registerlogo.dart';
import 'package:hyde_functional_responsive/first%20page/register.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => const Firstreg()
  },
));