// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerceapp/model/shop_model.dart';
import 'package:ecommerceapp/view/item_details/product_details_body.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  late Datum model;
  ProductDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 128, 172),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 128, 172),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
          color: Color.fromARGB(255, 154, 204, 231),

          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
               color: Color.fromARGB(255, 154, 204, 231),
            ),
           
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart_outlined,
            color: Color.fromARGB(255, 154, 204, 231),

            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ProductDetailsBody(model: model),
    );
  }
}















// import 'package:ecommerceapp/model/shop_model.dart';
// import 'package:ecommerceapp/view/item_details/product_details_body.dart';
// import 'package:flutter/material.dart';

// class ProductDetail extends StatelessWidget {
//   late Datum model;

//   ProductDetail({super.key, required this.model});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 65, 128, 172),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 65, 128, 172),
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: Icon(
//             Icons.arrow_back_rounded,
//           ),
//           color: Color.fromARGB(255, 151, 151, 151),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
//             child: IconButton(
//               onPressed: null,
//               icon: Icon(
//                 Icons.search,
//               ),
//               color: Color.fromARGB(255, 151, 151, 151),
//             ),
//           ), 
//           Padding(
//             padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
//             child: IconButton(
//               onPressed: null,
//               icon: Icon(
//                 Icons.shopping_cart_outlined,
//               ),
//               color: Color.fromARGB(255, 151, 151, 151),
//             ),
//           ),hrrr
//           SizedBox(width: 10,)
//         ],
//       ),
//ith vare...........
//       body: ProductDetailsBody(model: model),
//     );
//   }
// }
