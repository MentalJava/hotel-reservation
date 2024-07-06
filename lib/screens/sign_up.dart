import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/sign_up_controller.dart';
import 'package:hotel_reservation/widgets/button/custom_elevated_button.dart';
import 'package:hotel_reservation/widgets/text_form_field/sign_text_form_field.dart';

class SignUp extends StatelessWidget {
  final signUpController = Get.put(SignUpController());
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 120,
            ),
            child: Column(
              children: [
                SignTextFormField(
                  controller: signUpController.nameController,
                  isHideText: false,
                  name: 'Username',
                ),
                const SizedBox(
                  height: 20,
                ),
                SignTextFormField(
                  controller: signUpController.passwordController,
                  isHideText: false,
                  name: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                SignTextFormField(
                  controller: signUpController.confirmPasswordController,
                  isHideText: false,
                  name: 'Confirm Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                SignTextFormField(
                  controller: signUpController.emailController,
                  isHideText: true,
                  name: 'Email Address',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                    ),
                    CustomElevatedButton(
                      title: 'NEXT',
                      fontsize: 17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
