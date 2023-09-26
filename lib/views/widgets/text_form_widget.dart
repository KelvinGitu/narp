import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.icon,
  });

  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        // textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          border: InputBorder.none,
          hintText: hintText,
        ),
        style: Theme.of(context).textTheme.bodySmall,
        cursorColor: Colors.black,
      ),
    );
  }
}
