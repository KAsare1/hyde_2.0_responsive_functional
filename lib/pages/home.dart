import 'package:flutter/material.dart';
import 'package:hyde_functional_responsive/sidepages/drawer.dart';
import 'package:hyde_functional_responsive/cards/category.dart';


class Home extends StatefulWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      appBar: AppBar(
        title: Image.asset('assets/HYDE_LOGO.png', height: 90, fit: BoxFit.fitHeight, ),
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: Color.fromRGBO(251, 162, 162, 100),
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
        iconTheme: const IconThemeData(),
      ),
      body:
      Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 23, bottom: 0),
                      child: const SizedBox(
                        width: 150,
                        height: 30,
                        child: Text('Good afternoon',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                            FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  height: 160,
                  alignment: Alignment.topLeft,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 20,),
                      Category('assets/food.jpg'),
                      const SizedBox(width: 15,),
                      Category('assets/clothes.jpg'),
                      const SizedBox(width: 15,),
                      Category('assets/devices.jpeg'),
                      const SizedBox(width: 15,),
                      Category('assets/Beauty.jpg'),
                      const SizedBox(width: 15,),
                      Category('assets/partner-image.jpg'),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    height: 40,
                    width: 250,
                    child:      ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(251, 162, 162, 100)
                                  ),
                                ),
                              ),
                              Center(
                                child: TextButton(
                                  style:
                                  TextButton.styleFrom(
                                    padding: const EdgeInsets.all(5.0),
                                    textStyle: const TextStyle(fontSize: 30),
                                    enableFeedback: false
                                  ),
                                  onPressed: null,
                                  child: const Text('Featured products',
                                    style: TextStyle(fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    )
                ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 400,
                child: Products()
              )]
          ),
        ),
      ),
    );
  }
}
