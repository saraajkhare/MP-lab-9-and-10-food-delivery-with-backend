import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food/services/auth/auth_gate.dart';
import 'package:food/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:food/models/restaurant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyC2QOTbUx1Ggq9t9nG66dDs2COQBnsw5Sw",
        authDomain: "food-568d8.firebaseapp.com",
        projectId: "food-568d8",
        storageBucket: "food-568d8.firebasestorage.app",
        messagingSenderId: "498741428927",
        appId: "1:498741428927:web:8c7981739af3ab7912fc0a",
        measurementId: "G-640WNYR1E5",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ), // Provide ThemeProvider
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ), // Provide Restaurant
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

//47:12 food page
