import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../widgets/back_button.dart';
import '../widgets/buttons.dart';
import '../widgets/text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  MyBackButton(),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'Hello! Register to get\nstarted',
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              MyTextFormField(
                hintText: 'Username',
                controller: usernameController,
                keyboardType: TextInputType.none,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextFormField(
                hintText: 'Email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextFormField(
                hintText: 'Password',
                controller: passwordController,
                keyboardType: TextInputType.none,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextFormField(
                hintText: 'Confirm password',
                controller: confirmPasswordController,
                keyboardType: TextInputType.none,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: () {},
                title: 'Register',
                bgColor: myBlackColor,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Divider(
                    color: myBorderColor,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Or Login with',
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Divider(
                    color: myBorderColor,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 12,
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
