import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView( // antisipasi error ketika aplikasinya melebihi height dari device
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:
                      Icon(Icons.rocket_launch, size: 100, color: Colors.blue),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Center(
                  child: Text("Dean's App",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("Email"),
                const TextField(
                  decoration: InputDecoration(hintText: "Input your Email..."),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text("Password"),
                const TextField(
                  obscureText: true,
                  decoration:
                      InputDecoration(hintText: "Input your Password..."),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () => redirectToHome(),
                    child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void redirectToHome() {
    Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
  }
}
