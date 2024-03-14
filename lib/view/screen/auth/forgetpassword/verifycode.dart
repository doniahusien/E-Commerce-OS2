import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:os/controller/auth/forgetpassword_controller.dart';
import 'package:os/controller/auth/verifycode_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
   Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =
        Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter The Digit Code Sent To wael@gmail.com"),
          const SizedBox(height: 15),
            OtpTextField(
              
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor:const  Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                     controller.goToResetPassword() ; 
                }, // end onSubmit
              ), 
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}