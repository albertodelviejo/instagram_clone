import 'package:flutter/material.dart';

class InstagramTextField extends StatelessWidget {
  final String hintText;
  const InstagramTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      child: TextFormField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(), hintText: hintText)),
    );
  }
}
