import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'authentication/bloc/auth_bloc.dart';
import 'authentication/bloc/auth_event.dart';
import 'authentication/repository/auth_repository.dart';
import 'authentication/screens/login_screen.dart';
import 'authentication/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepository();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(authRepository: authRepository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Recipe App',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: const LoginScreen(),
      ),
    );
  }
}
