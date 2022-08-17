import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants.dart';
import 'package:ticktok_clone/widgets/text_input.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          Text(
            'Tiktok Clone',
            style: TextStyle(
                fontSize: 35, color: buttonColor, fontWeight: FontWeight.w900),
          ),
          const Text(
            'Sign up',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: context.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _emailController,
              labelText: 'Email',
              icon: Icons.email,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: context.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _passwdController,
              labelText: 'Password',
              icon: Icons.lock,
            ),
          ),
          InkWell(
            onTap: () {
              print('sign up');
            },
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: buttonColor, borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ))),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Have an account? ',
                style: TextStyle(fontSize: 10),
              ),
              InkWell(
                onTap: () {
                  Get.offAllNamed('/login');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 10, color: buttonColor),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
