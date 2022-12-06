import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
   ProductDetails({Key? key, this.product_detail_name, this.product_detail_picture, this.product_detail_price}) : super(key: key);

  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  int counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: GridTile(
              child: Container(
                margin: const EdgeInsets.only(),
                  color: Colors.white70,
                  child: Image.asset(widget.product_detail_picture)
              )
            )
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 20),
                  child: Text(widget.product_detail_name, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
              ),
              const SizedBox(height: 30, child: Text('Description'),),
              const SizedBox(height: 10,),
              SizedBox(
                height: 63,
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.black12
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                counter +=counter;
                              }, icon: const Icon(Icons.add, size: 40,)),
                              const SizedBox(width: 45),
                              Text('$counter', style: const TextStyle(fontSize: 35),),
                              const SizedBox(width: 43),
                              IconButton(onPressed: () {counter -=counter;}, icon: const Icon(Icons.remove, size: 43,)),
                              const SizedBox(width: 5)
                            ],
                          ),
                        ],
                      ),
                  ]
                    ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children:const [
                  SizedBox(width: 12,),
                  FilledCardExample(),
                  SizedBox(width: 12,),
                  OutlinedCardExample()
              ]),
              const SizedBox(height: 50,),
              Row(
                children: [
                  const SizedBox(width: 12,),
                  SizedBox(
                      height: 51,
                      width: 310,
                      child:      ClipRRect(
                          borderRadius: BorderRadius.circular(12),

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
                                      padding: const EdgeInsets.only(right: 120, left: 120),
                                      textStyle: const TextStyle(fontSize: 30),
                                    ),
                                    onPressed: () {},
                                    child: const Text('ORDER',
                                      style: TextStyle(fontSize: 17,
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
                  SizedBox(width: 15,),
                  SizedBox(
                      height: 51,
                      width: 50,
                      child:      ClipRRect(
                          borderRadius: BorderRadius.circular(12),

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
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart),
                                    style:
                                    TextButton.styleFrom(
                                      padding: const EdgeInsets.all(10.0),
                                      textStyle: const TextStyle(fontSize: 30),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ]
                          )
                      )
                  ),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 1,
        color: Colors.black45,
        child: SizedBox(
          width: 180,
          height: 200,
          child: Center(child: Text('MAP CARD')),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black45,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 180,
          height: 200,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}

