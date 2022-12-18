import 'package:ecommerceapp/controller/constants/grid_colors.dart';
import 'package:ecommerceapp/controller/shop_controller.dart';
import 'package:ecommerceapp/view/item_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ItemsList extends StatelessWidget {
  ItemsList({
    Key? key,
  }) : super(key: key);

  ShopController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: controller.model.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: GridColors.itemColors[index],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 180,
                      width: 160,
                      child: Image(
                        image: NetworkImage(controller.model[index].image),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        controller.model[index].name.toUpperCase(),
                        style: const TextStyle(
                          color: Color(0xFFACACAC),
                        ),
                      ),
                    ),
                    Text(
                      '\$${controller.model[index].price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Get.to(() => ProductDetail(model: controller.model[index]));
              });
        });
  }
}
