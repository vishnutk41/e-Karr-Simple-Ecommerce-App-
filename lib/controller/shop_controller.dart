import 'package:ecommerceapp/controller/api_services.dart';
import 'package:ecommerceapp/model/shop_model.dart';
import 'package:get/get.dart';


class ShopController extends GetxController {
  
   List<Datum> model = [];
   @override
void onInit() {
       _getdata();

    super.onInit();

  }
  _getdata() async{
    // print(_model);
    model = (await ApiServices().getData())!;
    // return model;
    
  }

}