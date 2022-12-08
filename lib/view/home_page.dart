// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ecommerceapp/controller/api_services.dart';
import 'package:ecommerceapp/model/shop_model.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();
   List<Datum> _model = [];
  @override
  void initState() {
    
    super.initState();
     _getdata();

  }
  _getdata() async{
    _model = (await ApiServices().getData())!;
  }
  
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
       backgroundColor: Color(0xFFF9FAFC),
      body:SafeArea(
        child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                   mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                         width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                         child: Image.asset(
                          'assets/images/VISHNU TK.jpeg',
                          fit: BoxFit.cover,
                        ),

                      ),
                      Container(
                         width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                           color: Color.fromARGB(255, 109, 130, 193),
                           boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                           shape: BoxShape.circle,
                        ),
                        child: Icon( Icons.shopping_cart,
                          color: Color(0xFFE7E9E5),
                          size: 35,),

                      ),
                    ],
                ),
                SizedBox(
    height: 15,
  ),
Column(
 mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Our',
                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                     Text(
                      'Products',
                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                  ],
),
SizedBox(
    height: 15,
  ),
Row(
mainAxisSize: MainAxisSize.max,
children: [
  Expanded(child: TextField(
    controller: textController,
     autofocus: false,
                        obscureText: false,
                         
                        decoration: InputDecoration(
                         
                           enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                         
                           hintText: 'Search Products',
                           
                              filled: true,
                          fillColor: Color(0xFFF3F3F2),
                          suffixIcon: Icon(
                            Icons.search_sharp,
                            color: Color(0xFF757575),
                            size: 22,
                          ),

                        ),
                         style: TextStyle(
                          color: Color.fromARGB(255, 16, 18, 19),
                          fontSize: 14,
                           fontWeight: FontWeight.w600
                        ),

  ),
  
  ),
  SizedBox(
    width: 10,
  ),
  Material(
     color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                         width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(15),

                        ),
                        child: Icon(
                          Icons.filter_alt,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
  ),
],
),

 SizedBox(
    height: 10,
  ),

  Text("Popular Products",style: TextStyle(
    fontSize: 17,fontWeight: FontWeight.bold,
  ),),
   SizedBox(
    height: 10,
  ),
 _model.isEmpty ?const Center(child: CircularProgressIndicator(),):
    
    Expanded(
  child:
  
  
   MasonryGridView.builder(
    
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,

    ),
    
              itemCount:_model.length,
                       itemBuilder: (context, index) {
                      return 
                         Container(
                              width: 100,
                              height: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(
                                            0, 0, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.end,
                                      children: const [
                                        Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(
                                            5, 5, 5, 5),
                                    child: Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width,
                                      height: MediaQuery.of(context)
                                              .size
                                              .height *
                                          0.2,
                                      decoration: const BoxDecoration(
                                        color:
                                          Colors.white,
                                      ),
                                      child: Image(
                                     image: NetworkImage( _model[index].image,),   
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      _model[index].name.toUpperCase(),
                                    maxLines: 2,
                                    style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF443E3B),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                  ),
                                  Text(
                                      _model[index].brand,
                                    style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFC8442),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '\$',
                                        style:
                                          TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      Color(0xFFEF6D39),
                                                  fontSize: 25,
                                                ),
                                      ),
                                      Text(
                                          _model[index].price,
                                        style:
                                           const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 25,
                                                ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5,)
                                ],
                              ),
                            );
                      
                    },
  ),
),

              ],
        ),
        ),
      )
    );
  }
}