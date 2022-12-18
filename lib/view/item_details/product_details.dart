import 'package:ecommerceapp/controller/shop_controller.dart';
import 'package:ecommerceapp/model/shop_model.dart';
import 'package:ecommerceapp/view/item_details/product_details_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



// ignore: must_be_immutable
class ProductDetail extends StatelessWidget {

  late Datum model;

  ProductDetail({super.key, required this.model});
  ShopController controller = Get.find();
 

  @override
  Widget build(BuildContext context) {
    late double height;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 128, 172),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 128, 172),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
          color: Color.fromARGB(255, 154, 204, 231),

          ),
        ),
        actions: const [
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
      body: ProductDetailsBody(height: height, model: model),
    );
  }
}

