import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_pallete.dart';
import 'package:spotify/feature/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify/feature/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up.',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomField(
                  controller: nameController,
                  hintText: 'Name',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomField(
                  controller: passwordController,
                  hintText: 'Password',
                  isObsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthGradientButton(
                  buttonText: 'Sign Up',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account ?',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: const [
                      TextSpan(
                        text: ' Sign In',
                        style: TextStyle(
                          color: Pallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
