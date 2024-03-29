import 'package:os/controller/onboarding_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
   // widget for building a slider
    return PageView.builder(
        controller: controller.pageController,
         // Call onPageChanged method from the controller
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].image!,
                  // width: ,
                  height: Get.width / 1.3,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 65),
                Text(onBoardingList[i].title!,
                    style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      ),
                const SizedBox(height: 20),
          
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,//Body text from the static data
                      textAlign: TextAlign.center,
                      style: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14)
                    )),
              ],
            ));
  }
}