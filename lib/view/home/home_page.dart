import 'package:ecommerceapp/view/home/body_contents/body.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_rounded,
           color: Color.fromARGB(255, 151, 151, 151),
        ),
        actions:const [

           Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 6, 0),

             child: Icon(Icons.search,
                     color: Color.fromARGB(255, 151, 151, 151),

             ),
           ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
              child: Icon(Icons.shopping_cart_outlined,
                        color: Color.fromARGB(255, 151, 151, 151),

              ),
            ),

        ],
      ),
        backgroundColor: Colors.white,

      body: const Body(),
    );
  }
}