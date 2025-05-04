import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/authentication/screens/signup_screen.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    context.read<AuthBloc>().add(
      AuthLoginRequested(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text("Login")),
  //     body: BlocConsumer<AuthBloc, AuthState>(
  //       listener: (context, state) {
  //         if (state is AuthSuccess) {
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             const SnackBar(content: Text("Login successful!")),
  //           );
  //         } else if (state is AuthFailure) {
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(content: Text(state.error)),
  //           );
  //         }
  //       },
  //       builder: (context, state) {
  //         return Padding(
  //           padding: const EdgeInsets.all(16),
  //           child: Column(
  //             children: [
  //               TextField(
  //                 controller: emailController,
  //                 decoration: const InputDecoration(labelText: "Email"),
  //               ),
  //               TextField(
  //                 controller: passwordController,
  //                 obscureText: true,
  //                 decoration: const InputDecoration(labelText: "Password"),
  //               ),
  //               const SizedBox(height: 20),
  //               ElevatedButton(
  //                 onPressed: state is AuthLoading ? null : _login,
  //                 child: state is AuthLoading
  //                     ? const CircularProgressIndicator()
  //                     : const Text("Login"),
  //               ),
  //               TextButton(
  //                 onPressed: () {
  //                   Navigator.push(context,
  //                     MaterialPageRoute(builder: (_) => const SignUpScreen()));
  //                 },
  //                 child: const Text("Don't have an account? Sign Up"),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("Login")),
    body: Center(child: Text("Login Screens")),
  );
}
}
