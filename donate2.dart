import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // For Cupertino Icons
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // For Font Awesome Icons


class ReceiversListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6d2c1e), // Dark red color as in the image
        title: Text('Receivers List'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFa71f24), // Dark red background for the tab section
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Your Blood Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Other Blood Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return BloodTypeCard(
                  bloodType: 'A+', // Change this for dynamic content
                  name: 'Jauhar Ansari',
                  units: '7 Units (Blood)',
                  location: 'Patna, Bihar, India',
                  date: 'Tuesday, Aug 27',
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color(0xFF6d2c1e), // Same dark red color for consistency
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.handHoldingHeart),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.money_dollar_circle),
            label: 'Request for Blood',
          ),
        ],
      ),
    );
  }
}

class BloodTypeCard extends StatelessWidget {
  final String bloodType;
  final String name;
  final String units;
  final String location;
  final String date;

  BloodTypeCard({
    required this.bloodType,
    required this.name,
    required this.units,
    required this.location,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Color(0xFFe91e63), // Magenta color for blood icon
                  radius: 30,
                  child: Text(
                    bloodType,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(units),
                    Text(location),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FaIcon(FontAwesomeIcons.shareAlt,
                    color: Color(
                        0xFF00B8D4)), // Consistent blue color for the share icon
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFF4CAF50)), // Green accept button
                  onPressed: () {},
                  child: Text('Accept'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
