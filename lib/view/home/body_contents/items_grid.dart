import 'package:ecommerceapp/controller/shop_controller.dart';
import 'package:ecommerceapp/view/home/body_contents/items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ItemGridView extends StatelessWidget {
   ItemGridView({super.key});
ShopController controller = Get.put(ShopController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
       child: 
      controller.model.isEmpty ?const Center(child: CircularProgressIndicator(),):
  
      ItemsList()
      ,

     );
  }
}