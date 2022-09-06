import 'package:apigetxtest/services/dataservice.dart';
import 'package:get/get.dart';

import '../model/datamodel.dart';

class Datacontroller extends GetxController{

  var datamodel = <Datamodel>[].obs;
  var loding = true.obs;
  getData()async{
    try {
      loding.value = true;
      var data = await Dataservices().getservices();
      if( data!= null){
        datamodel.value =data;
        loding.value=false;
      }
      
    } catch (e) {
      Get.snackbar('title', '$e');
      loding.value = false;
      
    }
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}