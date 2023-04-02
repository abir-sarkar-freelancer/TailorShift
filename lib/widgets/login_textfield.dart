import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.loginTextEditingController,
    required this.loginObscureText,
    required this.loginHintText,
  });
  final TextEditingController loginTextEditingController;
  final String loginHintText;
  final bool loginObscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: TextField(
        controller: loginTextEditingController,
        obscureText: loginObscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: loginHintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
