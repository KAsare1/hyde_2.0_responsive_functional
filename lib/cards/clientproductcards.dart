import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/main.dart';
import 'package:hyde_functional_responsive/pages/beauty.dart';
import 'package:hyde_functional_responsive/pages/clothes.dart';
import 'package:hyde_functional_responsive/pages/food.dart';



Widget Client(String image) => Card(
  margin: EdgeInsets.only(left: 20, right: 20),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
    elevation: 2.0,
    child: SizedBox(
      width:330,
      height: 150,
      child: InkWell(
        splashColor: Colors.black,
        onTap: (){},
        child: ClipRRect( borderRadius: BorderRadius.circular(10),
          child: Image.asset(image, fit: BoxFit.fill,),
        ),
      ),
    ));

Widget Product(String image) => Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
    margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
    elevation: 3.0,
    child: SizedBox(height: 200, width: 170,
      child: InkWell(
        splashColor: Colors.black,
        onTap: (){},
        child: ClipRRect( borderRadius: BorderRadius.circular(10),
          child: Image.asset(image, fit: BoxFit.fitWidth,),
        ),
      ),
    )
);