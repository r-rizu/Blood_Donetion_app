import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LanguageSelectionScreen(),
  ));
}

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF893232), // Red color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add functionality for back button
          },
        ),
        title: Text("Choose Language"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                languageCard('A', 'English'),
                languageCard('H', 'Hindi'),
                languageCard('M', 'Marathi'),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Submit button functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF893232), // Red color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 12.0),
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE0E0E0), // Light grey background
    );
  }

  Widget languageCard(String letter, String language) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFF893232), // Red circle
              child: Text(
                letter,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              radius: 30,
            ),
            SizedBox(height: 20),
            Text(language),
          ],
        ),
      ),
    );
  }
}
