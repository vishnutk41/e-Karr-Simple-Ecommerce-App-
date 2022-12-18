

import 'package:ecommerceapp/model/shop_model.dart';
import 'package:ecommerceapp/view/item_details/item_count.dart';
import 'package:flutter/material.dart';


class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({
    Key? key,
    required this.height,
    required this.model,
  }) : super(key: key);

  final double height;
  final Datum model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: 500,
                margin: EdgeInsets.only(top: height * 0.3),
                padding:
                    EdgeInsets.only(top: height * 0.13, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Color"),
                            Container(
                              height: 25,
                              width: 25,
                              padding: const EdgeInsets.all(3),
                              margin: const EdgeInsets.only(right: 10, top: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 65, 128, 172),
                                ),
                              ),
                              child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 65, 128, 172),
                              )),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          margin: const EdgeInsets.only(right: 10, top: 20),
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 202, 172, 146),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          margin: const EdgeInsets.only(right: 10, top: 20),
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 152, 148, 147),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                                color: Color.fromARGB(255, 171, 171, 171)),
                            children: [
                              TextSpan(text: "size\n"),
                              TextSpan(
                                text: "12 cm",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        model.description,
                        style: const TextStyle(height: 1.5),
                      ),
                    ),
                    Row(
                      children: [
                        ItemCount(),
                        const SizedBox(
                          width: 155,
                        ),

                        Expanded(
                          child: ElevatedButton(
  onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 94, 96),
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(10),
                            ),
                            child: const Icon( 
    Icons.favorite_rounded,
    color: Colors.white,
    size: 20,
                            ),
),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 65, 128, 172),
                            ),
                          ),
                          child: const IconButton(
                            onPressed: null,
                            padding: EdgeInsets.zero,
icon: Icon(Icons.shopping_cart,
 color: Color.fromARGB(255, 65, 128, 172),),
),
                        ),

Expanded(
  child:   SizedBox(
  
  height: 50,
  
  child: ElevatedButton(
  
    onPressed: () {},
  
    style: ElevatedButton.styleFrom(backgroundColor:
  
                                      const Color.fromARGB(255, 65, 128, 172),
  
                                  shape: RoundedRectangleBorder(
  
                                    borderRadius:
                                        BorderRadius.circular(12), // <-- Radius
  
                                  ),
  
    ),
  
                                child: const Text('BUY NOW',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
  
  )
  
  ),
),


                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.brand,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      model.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            const TextSpan(text: 'price\n'),
                            TextSpan(
                              text: '\$${model.price}',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Image(
                            fit: BoxFit.contain,
                            width: 250,
                            height: 250,
                            image: NetworkImage(
                              model.image,
                            ),
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
