import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_page/register.dart';

import 'home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});


  @override
  State<MyLogin> createState() => _MyLoginState();

}

class _MyLoginState extends State<MyLogin> {
  bool _isChecked = false;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 100),
            child: Text('Login to your \n account', style: GoogleFonts.aBeeZee(fontSize:25),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,right: 35,left: 35),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      color: Colors.grey.shade100, // Set background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add padding to the left
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none, // Set border to none
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      color: Colors.grey.shade100, // Set background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add padding to the left
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          hintText: 'Password',
                          border: InputBorder.none, // Set border to none
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(
                   height: 20,
                 ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      const Text('Remember me'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // Add action for forgot password
                        },
                        child: const Text('Forgot Password?'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      // Navigate to home screen when the login button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myhome()), // Navigate to Home screen
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100), // Adjust padding as needed
                      decoration: BoxDecoration(
                        color: Colors.blue, // Background color
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16, // Adjust font size as needed
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  const Text('OR'),
                  const SizedBox(
                    height: 15 ,
                  ),

                  GestureDetector(
                    onTap: onPressed,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50), // Adjust padding as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      child: const Text(
                        'Login with Google',
                        style: TextStyle(
                          color: Colors.black87,
                          // fontSize: 16, // Adjust font size as needed
                            fontWeight: FontWeight.bold, // Make text bold
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyRegister()
                              ),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
