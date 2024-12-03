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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
            const CustomField(
              hintText: "Name",
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomField(
              hintText: "Email",
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomField(
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            const AuthGradientButton(),
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
    );
  }
}
