import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8D8D8), // Light gray background
      appBar: AppBar(
        backgroundColor:
            Color(0xFF8C3F3F), // Same reddish color as in your image
        title: Text('Notification'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF8C3F3F), // Same reddish color
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Donate'),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.volunteer_activism),
              title: Text('Request for blood'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Blood Rizwan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              '18 days ago',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color(0xFF8C3F3F), // Same reddish color as in your image
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                child: Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, "Home");
                },
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.favorite),
              onTap: () {
                Navigator.pushNamed(context, "Donate");
              },
            ),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.request_page),
              onTap: () {
                Navigator.pushNamed(context, "request");
              },
            ),
            label: 'Request for blood',
          ),
        ],
      ),
    );
  }
}
