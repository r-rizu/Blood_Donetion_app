import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8D8D8), // Light gray background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon or logo at the top
              Image.asset(
                'assets/blood-drop.png', // Add your image asset
                height: 100,
              ),
              SizedBox(height: 20),

              // Forget Password Text
              Text(
                'Forget password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Serif', // Optional for custom font styling
                ),
              ),
              SizedBox(height: 10),

              // Enter Registered Email Text
              Text(
                'Enter Registered Email',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontFamily: 'Serif',
                ),
              ),
              SizedBox(height: 20),

              // Email Input Field
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      255, 127, 29, 29), // Reddish background color
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: InputBorder.none,
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),

              // Submit Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 118, 21, 21), // Reddish color for button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 212, 208, 208),
                      fontFamily: 'Serif',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
