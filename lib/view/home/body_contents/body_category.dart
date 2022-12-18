import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key});

    List <String> categories =["Hand Bag","Jewelry","Foot Wear","Dresses"];

int selectionIndex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
  child:   SizedBox(
  
    height: 25,
  
    
  
    child: ListView.builder(
  
      scrollDirection: Axis.horizontal,
  
      itemCount: categories.length,
  
      itemBuilder: (context, index) => 
  
      buildCategory(index),
  
      ),
  
      ),
);
  }

  Widget buildCategory(int index) {
     return GestureDetector(
      onTap: (){
        selectionIndex=index;

      },
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(categories[index],
             style: TextStyle(fontWeight: FontWeight.bold,
         color: selectionIndex==index? const Color(0xFF535353):const Color(0xFFACACAC)),
             
       ),
       Container(
         color: selectionIndex==index? Colors.black:Colors.transparent,
         width: 30,
         height: 2,
         margin: const EdgeInsets.only(top: 5),
     
       ),
           ],
         ),
       ),
     );
   }
}
