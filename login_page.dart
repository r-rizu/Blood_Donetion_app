import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // Create a global key for the form
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3), // Light gray background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey, // Assign the form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, // Align left
              children: [
                // Image at the top
                Center(
                  child: Image.asset(
                    "assets/blood-drop.png",
                    width: 120,
                    height: 120,
                  ),
                ),
                SizedBox(height: 20),
                // Login Text
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Username TextField with left-aligned text
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF82292E), // Dark red color
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'USERNAME',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left, // Align text to the left
                      // Username validation logic
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Password TextField with left-side alignment and validation
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF82292E), // Dark red color
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left, // Align text to the left
                      // Password validation logic
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Forget password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "ForgetPassword");
                    },
                    child: Text(
                      'Forget password',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Login Button
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate the form before proceeding
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, proceed to dashboard
                        Navigator.pushNamed(context, "dashbord");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 159, 20, 32), // Dark red color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Sign up text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account?",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sign_page');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xFFA52222)), // Red color
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
