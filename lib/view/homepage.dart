import 'package:apigetxtest/controler/datacontroller.dart';
import 'package:apigetxtest/model/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
final controller =Get.put(Datacontroller());
  @override
  Widget build(BuildContext context) {
    print('ui change');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('api with gex',
        textAlign: TextAlign.center,),
        
      ),
      body: Container(
        width:size.width ,
        height: size.height,
        child: Obx(() {
          return controller.loding.isTrue?Center(child: CircularProgressIndicator(),): ListView.builder(
            itemCount: controller.datamodel.length,
            itemBuilder: (context, index) {
              final data = controller.datamodel[index];
            return Text(data.rating!.count.toString());
          },);
        }),
      )
    );
  }
}