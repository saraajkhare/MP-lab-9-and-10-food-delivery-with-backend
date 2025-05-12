import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/services/auth/login_or_register.dart';
import 'package:food/pages/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // User is signed in, navigate to the home page
            return const HomePage();
          } else {
            // User is not signed in, navigate to the login page
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
