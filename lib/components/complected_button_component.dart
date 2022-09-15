import 'package:flutter/material.dart';

class ComplactedButton extends StatelessWidget {
  const ComplactedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFF7DFC60),
      ),
      onPressed: null,
      child: const Icon(
        Icons.gpp_good_sharp,
        color: Colors.black,
      ),
    );
  }
}