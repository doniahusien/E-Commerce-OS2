import 'package:os/controller/test_controller.dart';
import 'package:os/core/class/handlingdataview.dart';
import 'package:os/core/constant/color.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());// Initialize TestController instance using GetX
    return Scaffold(

      appBar: AppBar(title: Text("Title") , 
      backgroundColor: AppColor.primaryColor,// AppColor=> where colors used throughout the application are defined in it.
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,// Status of data request
            widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data}");// Displaying data at the current index
                }));
      }),
    );
  }
}