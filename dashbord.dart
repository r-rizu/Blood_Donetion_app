import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFD8D8D8), // Light gray background
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 127, 20, 20), // Reddish color
        title: Row(
          children: [
            // CircleAvatar(
            //   backgroundImage: AssetImage('assets/mypic.png'), // Profile pic
            // ),
            SizedBox(width: 1),
            Text('Welcome Rizwan Ali'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, "notification");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 185, 185), // Same reddish color
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/mypic.png'),
                    radius: screenWidth * 0.12, // Responsive avatar size
                  ),
                  SizedBox(height: screenHeight * 0.03),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, "ProfilePage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Refer'),
              onTap: () {
                Navigator.pushNamed(context, "Refer");
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language '),
              onTap: () {
                Navigator.pushNamed(context, "Language");
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, "about");
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Check if screen width is greater than 600 to differentiate mobile vs desktop
            // ignore: unused_local_variable
            bool isDesktop = constraints.maxWidth > 600;

            return SingleChildScrollView(
              padding: EdgeInsets.all(screenWidth * 0.03),
              child: Column(
                children: [
                  // User ID and Blood Group Card
                  Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                        size: screenWidth * 0.09, // Responsive icon size
                      ),
                      title: Text(
                        'USAVER-341674',
                        style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('user id'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Text(
                              'A+',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.04),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Text(
                            'Blood Group',
                            style: TextStyle(fontSize: screenWidth * 0.02),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // Donation Information Card (Image)
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.red,
                                width: 2), // Red border around image
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.asset(
                              "assets/pic2.png",
                              height: screenHeight * 0.18,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // Request for Blood and Donate Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Request for Blood
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "request");
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.volunteer_activism,
                                  color: Colors.red,
                                  size: screenWidth *
                                      0.12, // Responsive icon size
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text('Request for blood'),
                                SizedBox(height: screenHeight * 0.02),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      // Donate Button
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "Donate");
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: screenWidth *
                                      0.12, // Responsive icon size
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text('Donate'),
                                SizedBox(height: screenHeight * 0.02),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.03),

                  // Donation Request Card with Accept, Location, and Share
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical:
                            screenHeight * 0.010, // Reduced vertical padding
                        horizontal:
                            screenWidth * 0.03, // Adjusted horizontal padding
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: screenWidth *
                                  0.06, // Decreased CircleAvatar size
                              child: Text(
                                'A+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth *
                                      0.04, // Slightly reduced font size
                                ),
                              ),
                            ),
                            title: Text(
                              'Jauhar Ansari\n7 Units (Blood)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth *
                                    0.04, // Reduced title font size
                              ),
                            ),
                            subtitle: Text(
                              'Patna, Bihar, India\nWednesday, May 7',
                              style: TextStyle(
                                  fontSize: screenWidth *
                                      0.03), // Reduced subtitle font size
                            ),
                          ),
                          SizedBox(
                              height: screenHeight *
                                  0.01), // Reduced space after ListTile

                          // Icons for location and sharing with Accept button
                          Row(
                            children: [
                              // Location and Share icons on the left
                              IconButton(
                                icon: Icon(Icons.location_on,
                                    color: Colors.red,
                                    size: screenWidth *
                                        0.07), // Reduced icon size
                                onPressed: () {
                                  // Add location functionality
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.share,
                                    color: Colors.red,
                                    size: screenWidth *
                                        0.07), // Reduced icon size
                                onPressed: () {
                                  // Add share functionality
                                },
                              ),
                              Spacer(),

                              // Accept Button
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Accept',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenWidth *
                                            0.035)), // Reduced button font size
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 20, 81, 38),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Bottom Menu Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Usavers Near Button
                      Column(
                        children: [
                          Icon(
                            Icons.people,
                            size: screenWidth * 0.15,
                          ),
                          Text('Usavers Near'),
                        ],
                      ),
                      // Beneficiaries Button
                      Column(
                        children: [
                          Icon(
                            Icons.group,
                            size: screenWidth * 0.15,
                          ),
                          Text('Beneficiaries'),
                        ],
                      ),
                      // Contribute Button
                      Column(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            size: screenWidth * 0.15,
                          ),
                          Text('Contribute'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 112, 12, 12), // Reddish color
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
            label: 'request for blood',
          ),
        ],
      ),
    );
  }
}
