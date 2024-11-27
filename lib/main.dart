import 'package:flutter/material.dart';
import 'welcome.dart'; // Import the welcome.dart file
import 'prediction.dart'; // Import the prediction.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) => WelcomePage(), // Set WelcomePage as the home screen
        '/prediction': (context) => PredictionPage(), // Add PredictionPage route
      },
    );
  }
}
