import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/pages/product/Productdetails.dart';
import '../main.dart';
import '../pages/beauty.dart';
import '../pages/clothes.dart';
import '../pages/device.dart';
import '../pages/food.dart';
import '../pages/services.dart';

Widget Category(String image) => Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
  ),
  elevation: 5.0,
  child: SizedBox(
    width:350,
    height: 120,
    child: InkWell(
      splashColor: Colors.black,
      onTap: (){if (image == 'assets/clothes.jpg'){
      Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
      return const Clothes(title: 'clothes');
      }));
      } else if (image == 'assets/food.jpg'){
      Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
      return const Food(title: 'food');
      }));
      } else if (image == 'assets/Beauty.jpg'){
      Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
      return const Beauty(title: 'beauty');
      }));
      } else if (image == 'assets/partner-image.jpg'){
      Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
      return const Services(title: 'services');
      }));
      } else if(image == 'assets/devices.jpeg'){
      Navigator.push(GlobalContextService.navigatorKey.currentContext!, MaterialPageRoute(builder: (context) {
      return const Devicecl(title: 'device');
      }));}},

      child: ClipRRect( borderRadius: BorderRadius.circular(10),
        child: Image.asset(image, fit: BoxFit.fill,),
    ),
  ),
));




class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Burger",
      "picture": "assets/hamb.jpg",
      "price" : "50",
    },
    {
      "name": "Iphone14",
      "picture": "assets/iphone.jfif",
      "price" : "50",
    },
    {
      "name": "lipgloss",
      "picture": "assets/lipgloss.jfif",
      "price" : "50",
    },
    {
      "name": "Hoodie",
      "picture": "assets/hoodie.jfif",
      "price" : "50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pic: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  const Single_prod({Key? key, this.prod_name, this.prod_pic, this.prod_price}) : super(key: key);
  final prod_name;
  final prod_pic;
  final prod_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(11),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),),
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(
                product_detail_name: prod_name,
                product_detail_picture: prod_pic,
                product_detail_price: prod_price,
            ))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold) ,
                    ),
                    title: Text(prod_price),
                  ),
                ),
                child: Image.asset(prod_pic, fit: BoxFit.cover,),),
            ),
          ),
        ),),
    );
  }
}





Widget product(String image) => Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
  ),
  margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
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