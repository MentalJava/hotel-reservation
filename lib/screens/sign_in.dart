import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/sign_in_controller.dart';
import 'package:hotel_reservation/widgets/button/custom_elevated_button.dart';
import 'package:hotel_reservation/widgets/button/sign_text_button.dart';
import 'package:hotel_reservation/widgets/text_form_field/sign_text_form_field.dart';

class SignIn extends StatelessWidget {
  final signInController = Get.put(SignInController());
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 120,
                ),
                child: Image(
                  image: AssetImage('assets/images/hotel_logo.png'),
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'HOTEL',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              SignTextFormField(
                controller: signInController.nameController,
                isHideText: false,
                name: 'Username',
              ),
              const SizedBox(
                height: 20,
              ),
              SignTextFormField(
                controller: signInController.passwordController,
                isHideText: true,
                name: 'Password',
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SignTextButton(
                    title: 'CANCEL',
                    fontsize: 17,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SignTextButton(
                    title: 'Sign Up',
                    fontsize: 17,
                    onClickEvent: () => Get.toNamed('/signup'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomElevatedButton(
                    title: 'NEXT',
                    fontsize: 17,
                    onClickEvent: () => Get.toNamed('/home'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
