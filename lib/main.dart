import 'package:flutter/material.dart';
import './screens/splash_screen.dart';
import './screens/login_screen.dart';

void main(List<String> args) {
  runApp(const TailorShift());
}

class TailorShift extends StatelessWidget {
  const TailorShift({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tailor Shift",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.green,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.green,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
