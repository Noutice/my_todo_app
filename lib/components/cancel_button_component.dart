import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.red,
      ),
      onPressed: null,
      child: const Icon(
        Icons.cancel_outlined,
        color: Colors.black,
      ),
    );
  }
}
