import 'package:flutter/material.dart';

class BotoAuth extends StatelessWidget {
  const BotoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 111, 54),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.orange[100],
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 4
        ),
      ),
    );
  }
}
