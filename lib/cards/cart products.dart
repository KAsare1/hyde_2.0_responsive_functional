import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [{
    "name": "Burger",
    "picture": "assets/hamb.jpg",
    "price" : "50",
    "quantity": "3",
  },];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return SingleCartProduct(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_pic: Products_on_the_cart[index]["picture"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_quantity: Products_on_the_cart[index]["quantity"],
        );
    });
      }
}

class SingleCartProduct extends StatelessWidget {
  const SingleCartProduct({Key? key, this.cart_prod_name, this.cart_prod_pic, this.cart_prod_price, this.cart_prod_quantity}) : super(key: key);

  final cart_prod_name;
  final cart_prod_pic;
  final cart_prod_price;
  final cart_prod_quantity;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cart_prod_name),
        leading: Image.asset(cart_prod_pic),
        subtitle: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Price:"),
                ),
                Padding(padding: EdgeInsets.all(4.0),
                child: Text(cart_prod_price),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0 ),
                  child: Text("Quantity:"),
                ),
                Padding(padding: EdgeInsets.all(4.0),
                  child: Text(cart_prod_quantity),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
