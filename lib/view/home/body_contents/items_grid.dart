import 'package:ecommerceapp/controller/api_services.dart';
import 'package:ecommerceapp/model/shop_model.dart';
import 'package:ecommerceapp/view/constants/grid_colors.dart';
import 'package:ecommerceapp/view/item_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemGridView extends StatefulWidget {
  const ItemGridView({super.key});

  @override
  State<ItemGridView> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
   List<Datum> _model = [];
    late Datum model;
  @override
  void initState() {
    
    super.initState();
     _getdata();

  }
  _getdata() async{
    // print(_model);
    _model = (await ApiServices().getData())!;
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return   
     _model.isEmpty ?const Center(child: CircularProgressIndicator(),):
     
     Expanded(
       child: MasonryGridView.builder(
         
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
         gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
     
         ),
         
                itemCount:_model.length,
                         itemBuilder: (context, index) {
     return GestureDetector(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
     padding: EdgeInsets.all(20),
     decoration: BoxDecoration(
       color: GridColors.itemColors[index],
       borderRadius: BorderRadius.circular(15),
     
     ),
     child:Image( image: NetworkImage( _model[index].image,),
     ),   
     height: 180,
     width: 160,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical:5),
               child: Text(  _model[index].name.toUpperCase(),
               style: TextStyle(
                color: Color(0xFFACACAC),
               ),),
             ),
             Text('\$${_model[index].price}',
             style: TextStyle(fontWeight: FontWeight.bold,),
             )
           ],
         ),
       ),
       onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail(model:_model[index]))),
     );


                         }),
     );
  }
}