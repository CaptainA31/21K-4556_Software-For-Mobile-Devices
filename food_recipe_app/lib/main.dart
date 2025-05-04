import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:food_recipe_app/authentication/bloc/auth_bloc.dart';
// import 'package:food_recipe_app/authentication/bloc/auth_event.dart';
// import 'package:food_recipe_app/authentication/repository/auth_repository.dart';
import 'package:food_recipe_app/authentication/screens/login_screen.dart';
// import 'package:food_recipe_app/authentication/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(MyApp());
  } catch (e) {
    print('Firebase init error: $e');
    runApp(const MaterialApp(home: Scaffold(body: Center(child: Text("Firebase Init Failed")))));
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final authRepository = AuthRepository();

    return 
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (_) => AuthBloc(authRepository: authRepository),
    //     ),
    //   ],
    //   child: 
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Recipe App',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home:  const LoginScreen(),
  );
      // ),
    // );
  }
}
