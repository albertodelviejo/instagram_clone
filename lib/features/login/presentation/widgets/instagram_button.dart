import 'package:flutter/material.dart';

class InstagramButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const InstagramButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)))),
        child: Text(title, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
