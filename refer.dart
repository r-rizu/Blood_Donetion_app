import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: ReferFriendScreen(),
  ));
}

class ReferFriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF893232), // Red color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add menu functionality here
          },
        ),
        title: Text("Refer Friend"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            // Illustration image (replace with actual image)
            Image(
              image: AssetImage('assets/refer.png'),
              width: 500, // Set to a larger value
              height: 200, // Adjust the height as needed
              // fit: BoxFit
              // .cover, // This will ensure the image covers the available space
            ),

            // Profile pic

            SizedBox(height: 100),
            // Referral description text
            Text(
              "Let your friend experience how it feels to make a difference in someone else's life. Invite them to be a part of Blood and help them save lives.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            // Referral Code Title
            Text(
              "YOUR REFERRAL CODE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            // Referral Code Box
            ElevatedButton(
              onPressed: () {
                // Copy referral code or share functionality
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
                child: Text(
                  'B6766B',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Another button for referral code
            ElevatedButton(
              onPressed: () {
                // Additional button functionality
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
                child: Text(
                  'B6766B',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF893232), // Red color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.white),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page, color: Colors.white),
            label: 'Request for Blood',
          ),
        ],
        selectedItemColor: Colors.white,
      ),
      backgroundColor: Color(0xFFE0E0E0), // Light grey background
    );
  }
}
