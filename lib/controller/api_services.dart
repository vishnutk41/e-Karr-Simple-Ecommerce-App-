import 'dart:developer';

import 'package:ecommerceapp/controller/api_constants.dart';
import 'package:ecommerceapp/model/shop_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
 
  Future <List<Datum>?> getData() async{
 
try {
  
 var url = Uri.parse(ApiConstants.baseUrl);
    var response = await http.get(url);


    if(response.statusCode==200){
      
      ShopModel model = shopModelFromJson(response.body);


      return model.data;

    }

} catch (e) {
  log(e.toString());
}

   

  }
}