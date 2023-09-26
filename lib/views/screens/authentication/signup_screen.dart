import 'package:delivery_app/views/screens/navbar/home.dart';
import 'package:delivery_app/views/widgets/elevated_button_widget.dart';
import 'package:delivery_app/views/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Center(
                child: Text(
                  'NARP',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text('Create an account.',
                style: Theme.of(context).textTheme.displayMedium!
                // .copyWith(color: Colors.grey.shade700),
                ),
            const SizedBox(
              height: 15,
            ),
            TextFormWidget(
              controller: _nameController,
              obscureText: false,
              hintText: 'Full Name',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormWidget(
              controller: _emailController,
              obscureText: false,
              hintText: 'Email Address',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormWidget(
              controller: _passwordController,
              obscureText: true,
              hintText: 'Password',
              icon: Icons.lock,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButtonWidget(
              buttonText: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/googleLogo.png'),
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/facebookLogo.png'),
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have an Account?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
