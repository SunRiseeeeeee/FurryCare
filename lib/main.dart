import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/pet_registration_screen.dart';
import 'screens/appointment_screen.dart';
import 'screens/tutorial/tutorial_screen.dart';  // Import the Tutorial Screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/tutorial',  // Set the initial route to '/tutorial'
      routes: {
        '/tutorial': (context) => TutorialScreen(),  // Tutorial screen route
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/add_pet': (context) => AddPetScreen(),
        '/appointments': (context) => AppointmentsScreen(),
      },
    );
  }
}
