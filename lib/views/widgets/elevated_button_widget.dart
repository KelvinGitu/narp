import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const ElevatedButtonWidget({
    super.key,
    required this.buttonText, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
