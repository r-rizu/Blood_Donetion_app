import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReceiversListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFa71f24), // Red color for the app bar
        title: Text('Receivers List'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFa71f24), // Red tab background color
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "Donate3");
                  },
                  child: Text(
                    'Your Blood Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "Donate2");
                  },
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
                  bloodType: 'A+',
                  name: 'Jauhar Ansari',
                  units: '7 Units (Blood)',
                  location: 'Patna, Bihar, India',
                  date: 'Wednesday, May 7',
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(
            255, 114, 11, 11), // Brown color for bottom navigation
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: const Color.fromARGB(255, 12, 11, 11),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.donate,
              color: Color.fromARGB(255, 14, 11, 11),
            ),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.request_page,
              color: const Color.fromARGB(255, 16, 15, 15),
            ),
            label: 'Request for blood',
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
                  backgroundColor: Color(0xFFe91e63), // Blood group color
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
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 10),
                    FaIcon(FontAwesomeIcons.shareAlt, color: Colors.blue),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4CAF50)),
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
