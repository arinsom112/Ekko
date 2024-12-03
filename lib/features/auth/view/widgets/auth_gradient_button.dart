import 'package:ekko/core_theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
              colors: [Pallete.gradient1, Pallete.gradient3])),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: Size(395, 55),
              backgroundColor: Pallete.transparentColor,
              shadowColor: Pallete.transparentColor),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
