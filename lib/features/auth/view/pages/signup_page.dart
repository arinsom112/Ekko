import 'package:ekko/core_theme/app_pallete.dart';
import 'package:ekko/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:ekko/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    //formKey.currentState!.validate();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomField(
                  hintText: "Name",
                  controller: nameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomField(
                  hintText: "Email",
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomField(
                  hintText: "Password",
                  controller: passwordController,
                  isObscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthGradientButton(
                  buttonText: 'Sign Up',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Aleady have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      //style: TextStyle(fontSize: 14),
                      children: const [
                        TextSpan(
                            text: 'Log In!',
                            style: TextStyle(color: Pallete.gradient3))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
