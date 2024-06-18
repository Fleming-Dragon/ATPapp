import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:your_app_name/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use local app logo
            Image.asset(
              "assets/img/logo.png",
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'ATP Masters',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            SignInButton(
              Buttons.googleDark,
              onPressed: () async {
                User? user = await signWithGoogle();
                if (user != null) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Google sign-in failed')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
