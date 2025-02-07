import 'package:flutter/material.dart';

class AddPetScreen extends StatefulWidget {
  @override
  _AddPetScreenState createState() => _AddPetScreenState();
}

class _AddPetScreenState extends State<AddPetScreen> {
  final _nameController = TextEditingController();
  final _breedController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Pet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Pet Name'),
            ),
            TextFormField(
              controller: _breedController,
              decoration: InputDecoration(labelText: 'Pet Breed'),
            ),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Pet Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // For now, just print the entered values
                print('Pet Name: ${_nameController.text}');
                print('Pet Breed: ${_breedController.text}');
                print('Pet Age: ${_ageController.text}');
                Navigator.pop(context);
              },
              child: Text('Save Pet'),
            ),
          ],
        ),
      ),
    );
  }
}
