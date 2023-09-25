import 'package:delivery_app/views/screens/authentication/signup_screen.dart';
import 'package:delivery_app/views/widgets/elevated_button_widget.dart';
import 'package:delivery_app/views/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(color: Colors.white),
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'Reset',
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/googleLogo.png'),
                  // backgroundColor: Colors.yellow,
                  radius: 20,
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/facebookLogo.png'),
                  // backgroundColor: Colors.blue,
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
                  'New User?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.bodySmall,
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
