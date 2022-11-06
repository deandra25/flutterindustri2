import 'package:episode_2/home/home_screen.dart';
import 'package:episode_2/login/login_screen.dart';
import 'package:episode_2/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen()
      },
    );
  }
}
