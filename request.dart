import 'package:flutter/material.dart';

void main() => runApp(BloodRequestApp());

class BloodRequestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BloodRequestPage(),
    );
  }
}

class BloodRequestPage extends StatefulWidget {
  @override
  _BloodRequestPageState createState() => _BloodRequestPageState();
}

class _BloodRequestPageState extends State<BloodRequestPage> {
  bool isCritical = false;
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8C1D1D),
        title: Text("Request for Blood"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Kindly fill the details correctly to help you better",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Select Blood Type",
                border: OutlineInputBorder(),
              ),
              items: ['Whole Blood', 'Plasma', 'Platelets']
                  .map((type) => DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Patient First Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Attendee Mobile Number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Select Blood Group",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Required Date",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Select Unit",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text("Critical"),
              value: isCritical,
              onChanged: (value) {
                setState(() {
                  isCritical = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Additional note to potential donors",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Adding the checkbox and Send Request button

            Row(
              children: [
                Checkbox(
                  value: isAgreed,
                  onChanged: (bool? value) {
                    setState(() {
                      isAgreed = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "I have read and agreed to these",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),

            // Centering the "Terms of Use and Privacy Policy" text
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle Terms of Use click
                },
                child: Text(
                  "Terms of Use and Privacy Policy",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8C1D1D), // Red color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: isAgreed
                    ? () {
                        // Handle send request logic
                      }
                    : null, // Disabled if not agreed
                child: Text(
                  "Send Request",
                  style: TextStyle(
                    
                    color: const Color.fromARGB(255, 104, 18, 18),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF8C1D1D),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Donate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page),
            label: "Request for blood",
          ),
        ],
      ),
    );
  }
}
