import 'package:ecommerceapp/view/home/body_contents/body_category.dart';
import 'package:ecommerceapp/view/home/body_contents/items_grid.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,

children: const [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Text("Women",style: TextStyle(
      fontWeight: FontWeight.bold,
       fontSize: 25,
    ),),
  ),

Category(),
ItemGridView(),
],
    );
  }
}