import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book an Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Select Pet and Schedule Appointment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Here you can add dropdowns or other inputs to select pets and appointment time
            ElevatedButton(
              onPressed: () {
                // Logic to book an appointment
                print('Appointment Booked!');
              },
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
