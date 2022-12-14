// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ecommerceapp/model/shop_model.dart';
import 'package:ecommerceapp/view/item_details/item_count_part.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatefulWidget {
  late Datum model;

  ProductDetailsBody({super.key, required this.model});

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

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
                decoration: BoxDecoration(
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
                            Text("Color"),
                            Container(
                              height: 25,
                              width: 25,
                              padding: EdgeInsets.all(3),
                              margin: EdgeInsets.only(right: 10, top: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 65, 128, 172),
                                ),
                              ),
                              child: DecoratedBox(
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
                          margin: EdgeInsets.only(right: 10, top: 20),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 202, 172, 146),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.only(right: 10, top: 20),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 152, 148, 147),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Color.fromARGB(255, 171, 171, 171)),
                            children: const [
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
                        widget.model.description,
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    Row(
                      children: [
                        ItemCount(),
       SizedBox(width: 155,),

                        Expanded(
                          child: ElevatedButton(
  onPressed: () {},
  child: Icon( //<-- SEE HERE
    Icons.favorite_rounded,
    color: Colors.white,
    size: 20,
  ),
  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 94, 96),
    shape: CircleBorder(), //<-- SEE HERE
    padding: EdgeInsets.all(10),
  ),
),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                       children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: 50,width: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: 
Color.fromARGB(255, 65, 128, 172),
                          
                          ),
                          
                          ),
                          child:IconButton(
                           
                            onPressed: null, padding: EdgeInsets.zero,
icon: Icon(Icons.shopping_cart,
 color: Color.fromARGB(255, 65, 128, 172),),
),
                        ),

Expanded(
  child:   SizedBox(
  
  height: 50,
  
  child: ElevatedButton(
  
    onPressed: () {},
  
    child: Text('BUY NOW',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
  
    style: ElevatedButton.styleFrom(backgroundColor:
  
    Color.fromARGB(255, 65, 128, 172) ,
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(12), // <-- Radius
  
      ),
  
    ),
  
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
                      widget.model.brand,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      widget.model.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(text: 'price\n'),
                            TextSpan(
                              text: '\$${widget.model.price}',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Image(
                            fit: BoxFit.contain,
                            width: 250,
                            height: 250,
                            image: NetworkImage(
                              widget.model.image,
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






// // ignore_for_file: must_be_immutable, prefer_const_constructors

// import 'package:ecommerceapp/model/shop_model.dart';
// import 'package:flutter/material.dart';

// class ProductDetailsBody extends StatefulWidget {
//   late Datum model;

//   ProductDetailsBody({super.key, required this.model});

//   @override
//   State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
// }

// class _ProductDetailsBodyState extends State<ProductDetailsBody> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 500,
//                   margin: EdgeInsets.only(top: size.height * 0.3),
//                   padding: EdgeInsets.only(
//                       top: size.height * 0.13, left: 20, right: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         topRight: Radius.circular(25)),
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.model.brand,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       Text(
//                         widget.model.name,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         children: [
//                           RichText(
//                             text: TextSpan(children: [
//                               TextSpan(text: 'price\n'),
//                               TextSpan(
//                                 text: '\$${widget.model.price}',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                             ]),
//                           ),dddddddddddddd
//                           Expanded(
//                           child: Image(
//                              fit: BoxFit.contain,
//                         image: NetworkImage(
//                           widget.model.image,
//                         ),
//                         // fit: BoxFit.fill,
//                       ),
//                       ),


//                         ],
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
                      
//                     ],
//                   ),
//                 ),

//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
