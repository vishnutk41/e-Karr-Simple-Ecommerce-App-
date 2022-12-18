// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:ecommerceapp/controller/item_count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCount extends StatelessWidget {
  ItemCount({super.key});
  ItemCountController controller = Get.put(ItemCountController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 125, 125, 125)),
              borderRadius: BorderRadius.circular(15)),
          child: IconButton(
            onPressed: () => controller.decrement(),
            padding: EdgeInsets.zero,
            icon: Icon(Icons.remove),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Obx(() => Text(
              controller.count.string,
              style: TextStyle(fontSize: 20),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 40,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 125, 125, 125)),
              borderRadius: BorderRadius.circular(15)),
          child: IconButton(
            onPressed: () => controller.increment(),
            padding: EdgeInsets.zero,
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
