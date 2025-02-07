import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email', style: TextStyle(fontSize: 16)),
            TextField(controller: _emailController, keyboardType: TextInputType.emailAddress),
            SizedBox(height: 20),
            Text('Password', style: TextStyle(fontSize: 16)),
            TextField(controller: _passwordController, obscureText: true),
            SizedBox(height: 20),
            Text('Confirm Password', style: TextStyle(fontSize: 16)),
            TextField(controller: _confirmPasswordController, obscureText: true),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Handle registration logic here
                if (_passwordController.text == _confirmPasswordController.text) {
                  print('Registered with Email: ${_emailController.text}');
                } else {
                  print('Passwords do not match');
                }
              },
              child: Text('Register'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Already have an account? Login here.'),
            ),
          ],
        ),
      ),
    );
  }
}
