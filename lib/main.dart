import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart'; 
import 'auth_wrapper.dart'; // Add this import to fix the error [cite: 196, 267]

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required [cite: 193]
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authenticated User Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Recommended for Week 5 [cite: 843]
      ),
      home: const AuthWrapper(), 
    );
  }
}