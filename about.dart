// import 'package:flutter/material.dart';

// void main() => runApp(BloodDonationApp());

// class BloodDonationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AboutUsPage(),
//     );
//   }
// }

// class AboutUsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF8C1D1D),
//         title: Text('About Us'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             // Handle menu icon press
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/blood_donation.png', // Replace with your image path
//               height: 150,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'About Us',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Text(
//                   'UBLOOD A unique societal platform, which facilitates real-time connect between the requester and the willing blood donor in a defined geography.\n\n'
//                   'The workflow is to connect the willing donor to save a life at times of need across the country. UBLOOD - a mobile application and web platform to find blood donors online.\n\n'
//                   'The application enables geo-searching, real-time connections and notifications, and updates, streamlining the process of finding donors in times of emergency like this.',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xFF8C1D1D),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey[400],
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Donate',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.request_page),
//             label: 'Request for blood',
//           ),
//         ],
//       ),
//     );
//   }
// }
