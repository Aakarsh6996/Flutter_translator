import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/translation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase (web doesn't require firebase_options.dart)
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "demo-api-key",
        authDomain: "flutter-translator-demo.firebaseapp.com",
        projectId: "flutter-translator-demo",
        storageBucket: "flutter-translator-demo.appspot.com",
        messagingSenderId: "123456789",
        appId: "1:123456789:web:demo",
      ),
    );
    print('Firebase initialized successfully');
  } catch (e) {
    print('Firebase initialization failed: $e');
    // Continue without Firebase - app will use local translations
  }

  runApp(const TranslatorApp());
}

class TranslatorApp extends StatelessWidget {
  const TranslatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Translator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TranslationScreen(),
    );
  }
}
