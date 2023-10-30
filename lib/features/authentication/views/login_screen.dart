import 'package:delivery_app/common/core/loader.dart';
import 'package:delivery_app/features/authentication/controller/auth_controller.dart';
import 'package:delivery_app/features/authentication/views/sign_in_with_google.dart';
import 'package:delivery_app/features/authentication/views/signup_screen.dart';
import 'package:delivery_app/common/widgets/elevated_button_widget.dart';
import 'package:delivery_app/common/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({
    super.key,
  });

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.read(authControllerProvider);
    return Scaffold(
      body: isLoading
          ? const Loader()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Center(
                        child: Text(
                          'NARP',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text('Welcome back!',
                        style: Theme.of(context).textTheme.displayMedium!
                        // .copyWith(color: Colors.grey.shade700),
                        ),
                    const SizedBox(
                      height: 25
                    ),
                    TextFormWidget(
                      controller: _emailController,
                      obscureText: false,
                      hintText: 'Email Address',
                      icon: Icons.email,
                    ),
                    const SizedBox(
                      height: 15
                    ),
                    TextFormWidget(
                      controller: _passwordController,
                      obscureText: true,
                      hintText: 'Password',
                      icon: Icons.lock,
                    ),
                    const SizedBox(
                      height: 15
                    ),
                    ElevatedButtonWidget(
                      buttonText: 'Login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 5
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              'Reset',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 25
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          decoration: const BoxDecoration(color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10
                        ),
                        Text(
                          'OR',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10
                        ),
                        Container(
                          height: 1,
                          width: 100,
                          decoration: const BoxDecoration(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15
                    ),
                    const Text('Sign-in with'),
                    const SizedBox(height: 15),
                    const GoogleFbSignIn(),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User?',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 5
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
