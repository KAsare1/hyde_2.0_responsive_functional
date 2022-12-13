import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/cards/cart%20products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart', style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromRGBO(251, 162, 162, 100),
        iconTheme: const IconThemeData(),
      ),

      body: CartProducts(),

      bottomNavigationBar: Container(
        color: Colors.white70,
        child: Row(
          children: [
            const Expanded(child: ListTile(
              title: Text("Total", style: TextStyle(fontSize: 25),),
              subtitle: Text('price', style: TextStyle(fontSize: 21),),
            )),
            Expanded(child: MaterialButton(
              onPressed: (){},
             child: Text("Check out", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
            )),
          ],
        ),
      ),
    );
  }
}
