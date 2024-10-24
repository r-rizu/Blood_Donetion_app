import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 129, 23, 5),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/mypic.png'),
            ),
            SizedBox(width: 10),
            Text('Welcome Rizwan ALi'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add),
            color: Colors.pink,
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 134, 6, 6),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  SizedBox(width: 500),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/mypic.png'), // Replace with your image URL
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Rizwan Ali',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    '8252641019',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'A+',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ListTile(
              title: Text('Are you available'),
              trailing: Switch(value: false, onChanged: (val) {}),
            ),
            Divider(),
            ListTile(
              title: Text('Last Blood Donation Date'),
              subtitle: Row(
                children: [
                  Text(
                    'Jun 10, 2024',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '9:41 AM',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date of Birth'),
                  Text('Gender'),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('2003-08-07'),
                  Text('Not Specified'),
                ],
              ),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('Weight in kgs'),
              subtitle: Text('0'),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('Location'),
              subtitle: Text('Dhaka, Bangladesh'),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('loction'),
              subtitle: Text('Bihar,India'),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('Did you get tattoo in past 12 months'),
              subtitle: Text('Have you ever testes positive for HIV?'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 106, 4, 4),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bloodtype),
            label: 'Request for blood',
          ),
        ],
      ),
    );
  }
}
