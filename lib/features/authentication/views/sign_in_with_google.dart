import 'package:delivery_app/features/authentication/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoogleFbSignIn extends ConsumerWidget {
  const GoogleFbSignIn({super.key});

  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => signInWithGoogle(context, ref),
          // iconSize: 30,
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/googleLogo.png'),
            backgroundColor:  Color(0xfff2f2f2),
          ),
        ),
        const SizedBox(width: 20),
        IconButton(
          onPressed: () => signInWithGoogle(context, ref),
          // iconSize: 30,
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/facebookLogo.png'),
            backgroundColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
