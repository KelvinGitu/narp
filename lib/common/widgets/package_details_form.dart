import 'package:flutter/material.dart';

class PackageDetailsField extends StatelessWidget {
  final TextEditingController controller;
  final double width;
  final String hintText;
  const PackageDetailsField({
    super.key,
    required this.controller,
    required this.width, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.4))),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
